defmodule DepCheckerTest do
  use ExUnit.Case
  doctest DepChecker

  test "it works" do
    expectation =
      %{"phoenix" => %{
          upgradable: true,
          installed_version: "1.3.0-rc.1",
          newest_version: "1.3.0-rc.2",
        },
      }

    reality = DepChecker.perform("phoenix", "../../phoenix-demo-app/mix.lock")

    assert expectation == reality
  end
end
