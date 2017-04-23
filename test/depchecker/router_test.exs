defmodule DepChecker.RouterTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts DepChecker.Router.init([])

  test "calling the endpoint" do
    # POST params
    params = %{
      package_name: "phoenix",
      path_to_mix_lock: "../../phoenix-demo-app/mix.lock",
    }

    # Create a test connection
    conn = conn(:post, "/", params)
    |> put_req_header("content-type", "application/json")

    # Invoke the plug
    conn = DepChecker.Router.call(conn, @opts)

    # Assert the response and status
    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body != ""
  end
end
