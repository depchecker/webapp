defmodule DepChecker do
  @moduledoc """
  Documentation for DepChecker.
  """

  @hex_api_endpoint "https://hex.pm/api"

  @doc """
  """
  def grab_deps do
    http_request()
  end

  # maybe use Hex.API.request(method, url, headers, body \\ nil)
  def http_request do
    package_name = "phoenix"
    url = fn package_name -> @hex_api_endpoint <> "/packages/" <> package_name end

    with %{body: body, status_code: 200} <- HTTPoison.get!(url.("phoenix")),
      {:ok, package} <- Poison.decode(body) do

      case List.first(package["releases"]) do
        nil ->
          raise "no release for package #{package.name}"

        release ->
          {_name, _app, current_version} = DepChecker.flattened_deps
          |> Enum.find(fn {name, _app, _version} -> name == package_name end)

          case Version.compare(release["version"], current_version) do
            :gt ->
              %{package_name =>
                %{installed_version: current_version,
                  newest_version: release["version"],
                  upgradable: true,
                },
              }

            :eq ->
              :eq

            :lt ->
              :lt
          end
      end
    end
  end

  @doc """
  Takes all Hex packages from the lock and returns them
  as `{name, app, version}` tuples.
  """
  @spec flattened_deps() :: [{String.t, String.t, String.t}]
  def flattened_deps do
    {lock, _} = Code.eval_file("../../demo_app/mix.lock")
    Hex.Mix.from_lock(lock)  # [{"hackney", "hackney", "1.6.6"}, ...]
  end
end
