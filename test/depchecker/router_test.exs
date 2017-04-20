defmodule DepChecker.RouterTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts DepChecker.Router.init([])

  test "calling the endpoint" do
    # Create a test connection
    conn = conn(:get, "/")

    # Invoke the plug
    conn = DepChecker.Router.call(conn, @opts)

    # Assert the response and status
    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body != ""
  end
end
