defmodule DepChecker.Router do
  use Plug.Router

  plug :match
  plug Plug.Parsers, parsers:      [:json],
                     pass:         ["application/json"],
                     json_decoder: Poison
  plug :dispatch

  post "/" do
    %{"package_name" => dep,
      "path_to_mix_lock" => path,
    } = conn.params

    payload = DepChecker.perform(dep, path) |> Msgpax.pack!()

    send_resp(conn, 200, payload)
  end

  match _ do
    send_resp(conn, 404, "Not found")
  end
end
