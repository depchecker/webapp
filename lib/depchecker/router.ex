defmodule DepChecker.Router do
  use Plug.Router

  # When the router is invoked, it will invoke the :match plug, represented by a
  # local `match/2` function, and then call the :dispatch plug which will
  # execute the matched code.
  plug :match
  plug Plug.Parsers, parsers:      [:json],
                     pass:         ["application/json"],
                     json_decoder: Poison
  plug :dispatch

  # get "/" do
  #   response = """
  #   <!doctype html5>
  #   <html>
  #     <head>
  #       <meta charset="utf-8">
  #     </head>
  #     <body>
  #       <form method=post>
  #         Project path: <input type=text name=project_path>
  #         Dependency: <input type=text name=dependency>
  #         <input type=submit>
  #       </form>
  #     </body>
  #   </html>
  #   """
  #   send_resp(conn, 200, response)
  # end

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
