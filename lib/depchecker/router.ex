defmodule DepChecker.Router do
  use Plug.Router

  # When the router is invoked, it will invoke the :match plug, represented by a
  # local `match/2` function, and then call the :dispatch plug which will
  # execute the matched code.
  plug :match
  plug :dispatch

  get "/hello" do
    send_resp(conn, 200, "world")
  end

  match _ do
    send_resp(conn, 404, "oops")
  end
end
