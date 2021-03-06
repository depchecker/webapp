defmodule DepChecker.Mixfile do
  use Mix.Project

  def project do
    [app: :depchecker,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [
       :logger,
       :cowboy,
       :plug,
     ],
     mod: {DepChecker.Application, []}
    ]
  end

  defp deps do
    [{:httpoison, "~> 0.10.0"},
     {:mix_test_watch, "> 0.0.0", only: :dev, runtime: false},
     {:cowboy, "~> 1.0.0"},
     {:plug, "~> 1.0"},
     {:poison, "~> 3.1"},
     {:msgpax, "~> 1.0"},
    ]
  end
end
