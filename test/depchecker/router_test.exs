defmodule DepChecker.RouterTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts DepChecker.Router.init([])

  test "returns hello world" do
    # Create a test connection
    conn = conn(:get, "/hello")

    # Invoke the plug
    conn = DepChecker.Router.call(conn, @opts)

    # Assert the response and status
    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "world"
  end
end
