defmodule DepChecker.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    cowboy_options =
      if Mix.env == :prod do
        [port: String.to_integer(System.get_env "PORT"),
        ]
      else
        []
      end

    children = [
      Plug.Adapters.Cowboy.child_spec(:http, DepChecker.Router, [], cowboy_options),
    ]

    opts = [strategy: :one_for_one, name: DepChecker.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
