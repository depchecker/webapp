defmodule DepChecker do
  @moduledoc """
  Documentation for DepChecker.
  """

  @hex_api_endpoint "https://hex.pm/api"

  @doc """
  """
  def perform(package_name, path_to_mix_lock) do
    %{body: body, status_code: 200} = http_get_package_from_hex(package_name)

    {:ok, package} = Poison.decode(body)

    mix_lock =
      case String.starts_with?(path_to_mix_lock, "http") do
        true ->
          http_get_and_parse_mix_lock(path_to_mix_lock)

        false ->
          {lock, _} = Code.eval_file(path_to_mix_lock)
          lock
      end

    {_name, _app, version} =
      from_lock(mix_lock)
      |> Enum.find(fn {name, _app, _version} -> name == package_name end)

    latest_release = package["releases"] |> List.first()

    latest_release
    |> compare_versions(version)
    |> to_payload(package_name, latest_release, version)
  end


  # maybe use Hex.API.request(method, url, headers, body \\ nil)
  def http_get_package_from_hex(package_name) do
    HTTPoison.get!("#{@hex_api_endpoint}/packages/#{package_name}")
  end


  def http_get_and_parse_mix_lock(uri) do
    case HTTPoison.get(uri) do
      {:ok, %{body: lock_str, status_code: 200}} ->
        {lock, _} = Code.eval_string(lock_str)
        lock

      otherwise -> otherwise
    end
  end

  @doc """
  Takes all Hex packages from the lock and returns them
  as `{name, app, version}` tuples.
  For example: [{"hackney", "hackney", "1.6.6"}, ...]
  """
  @spec from_lock(String.t) :: [{String.t, String.t, String.t}]
  def from_lock(lock) do
    Hex.Mix.from_lock(lock)
  end


  def compare_versions(nil, _version), do: raise "no such release"
  def compare_versions(release, version) do
    Version.compare(release["version"], version)
  end

  def to_payload(:gt, package_name, release, version) do
    %{package_name =>
      %{installed_version: version,
        newest_version: release["version"],
        upgradable: true,
      },
    }
  end

  def to_payload(:eq, package_name, _release, version) do
    %{package_name =>
      %{installed_version: version,
        newest_version: version,
        upgradable: false,
      },
    }
  end

  def to_payload(:lt, _package_name, _release, _version) do
    raise "not implemented"
  end

end
