defmodule DepChecker do
  @moduledoc """
  Documentation for DepChecker.
  """

  @hex_api_endpoint "https://hex.pm/api"

  @doc """
  """
  def grab_deps do
    # Mix.Project.deps_paths()
    # %{certifi: "~/Projects/depchecker/webapp/deps/certifi",
    #   hackney: "~/Projects/depchecker/webapp/deps/hackney",
    #   httpoison: "~/Projects/depchecker/webapp/deps/httpoison",
    #   idna: "~/Projects/depchecker/webapp/deps/idna",
    #   metrics: "~/Projects/depchecker/webapp/deps/metrics",
    #   mime: "~/Projects/depchecker/webapp/deps/mime",
    #   mimerl: "~/Projects/depchecker/webapp/deps/mimerl",
    #   phoenix: "~/Projects/depchecker/webapp/deps/phoenix",
    #   phoenix_pubsub: "~/Projects/depchecker/webapp/deps/phoenix_pubsub",
    #   plug: "~/Projects/depchecker/webapp/deps/plug",
    #   poison: "~/Projects/depchecker/webapp/deps/poison",
    #   ssl_verify_fun: "~/Projects/depchecker/webapp/deps/ssl_verify_fun"}

    # Mix.Project.config[:deps]
    # [phoenix: "> 0.0.0", httpoison: "~> 0.10.0"]

    # i want to get here:
    # [phoenix: "> 0.0.0", httpoison: "~> 0.10.0"]
    # %{"phoenix" => %{
    #     upgradable: true,
    #     installed_version: "1.2.0",
    #     newest_version: "1.3.0",
    #   },
    #   "httpoison" => %{
    #     upgradable: false,
    #     installed_version: "0.10.0",
    #     newest_version: "0.10.0",
    #   },
    # }
  end

  # maybe use Hex.API.request(method, url, headers, body \\ nil)
  def http_request do
    package_name = "poison"
    url = @hex_api_endpoint <> "/packages/" <> package_name

    with %{body: body, status_code: 200} <- HTTPoison.get!(url),
         {:ok, package} <- Poison.decode(body) do
      IO.inspect package
    end
  end

  @doc """
  Takes all Hex packages from the lock and returns them
  as `{name, app, version}` tuples.
  """
  @spec flattened_deps() :: [{String.t, String.t, String.t}]
  def flattened_deps do
    {lock, _} = Code.eval_file("mix.lock")
    Hex.Mix.from_lock(lock)  # [{"hackney", "hackney", "1.6.6"}, ...]
  end
end
