defmodule DepChecker.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    port = String.to_integer System.get_env "PORT"

    children = [
      Plug.Adapters.Cowboy.child_spec(:http, DepChecker.Router, [], [port: port])
    ]

    opts = [strategy: :one_for_one, name: DepChecker.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
