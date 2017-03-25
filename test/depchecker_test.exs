defmodule DepCheckerTest do
  use ExUnit.Case
  doctest DepChecker

  test "it works" do
    expectation =
      %{"phoenix" => %{
          upgradable: true,
          installed_version: "1.2.3",
          newest_version: "1.3.0-rc.1",
        },
        # "httpoison" => %{
        #   upgradable: false,
        #   installed_version: "0.10.0",
        #   newest_version: "0.10.0",
        # },
      }

    reality = DepChecker.grab_deps

    assert expectation == reality
  end
end
