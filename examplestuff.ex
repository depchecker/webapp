Mix.Project.deps_paths()
%{certifi: "~/Projects/depchecker/webapp/deps/certifi",
  hackney: "~/Projects/depchecker/webapp/deps/hackney",
  httpoison: "~/Projects/depchecker/webapp/deps/httpoison",
  idna: "~/Projects/depchecker/webapp/deps/idna",
  metrics: "~/Projects/depchecker/webapp/deps/metrics",
  mime: "~/Projects/depchecker/webapp/deps/mime",
  mimerl: "~/Projects/depchecker/webapp/deps/mimerl",
  phoenix: "~/Projects/depchecker/webapp/deps/phoenix",
  phoenix_pubsub: "~/Projects/depchecker/webapp/deps/phoenix_pubsub",
  plug: "~/Projects/depchecker/webapp/deps/plug",
  poison: "~/Projects/depchecker/webapp/deps/poison",
  ssl_verify_fun: "~/Projects/depchecker/webapp/deps/ssl_verify_fun"}

# Mix.Project.config[:deps] # to get requirements
[phoenix: "> 0.0.0", httpoison: "~> 0.10.0"]

# i want to get here:
%{"phoenix" => %{
    upgradable: true,
    installed_version: "1.2.0",
    newest_version: "1.3.0",
  },
  "httpoison" => %{
    upgradable: false,
    installed_version: "0.10.0",
    newest_version: "0.10.0",
  },
}

%{"downloads" =>
  %{"all" => 1759895, "day" => 6024, "week" => 31467},
  "inserted_at" => "2014-04-21T22:38:32.000000Z",
  "meta" => %{"description" => "Productive. Reliable. Fast. A productive web framework that\ndoes not compromise speed and maintainability.",
  "licenses" => ["MIT"],
  "links" => %{"github" => "https://github.com/phoenixframework/phoenix"},
  "maintainers" => ["Chris McCord",
  "Darko Fabijan",
  "José Valim"]},
  "name" => "phoenix",
  "owners" => [%{"email" => "chris@chrismccord.com",
  "url" => "https://hex.pm/api/users/chrismccord",
  "username" => "chrismccord"},
  %{"email" => "jose.valim@gmail.com",
  "url" => "https://hex.pm/api/users/josevalim",
  "username" => "josevalim"}],
  "releases" => [%{"inserted_at" => "2017-03-14T19:16:22.034658Z",
  "updated_at" => "2017-03-14T19:16:31.618046Z",
  "url" => "https://hex.pm/api/packages/phoenix/releases/1.3.0-rc.1",
  "version" => "1.3.0-rc.1"},
  %{"inserted_at" => "2017-03-02T06:18:19.326560Z",
  "updated_at" => "2017-03-02T06:18:25.794790Z",
  "url" => "https://hex.pm/api/packages/phoenix/releases/1.3.0-rc.0",
  "version" => "1.3.0-rc.0"},
  %{"inserted_at" => "2017-03-14T19:29:11.942870Z",
  "updated_at" => "2017-03-14T19:30:20.979640Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.2.3", "version" => "1.2.3"}, %{"inserted_at" => "2017-03-14T16:57:35.738142Z", "updated_at" => "2017-03-14T16:57:43.277645Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.2.2", "version" => "1.2.2"}, %{"inserted_at" => "2016-08-11T19:22:25.184351Z", "updated_at" => "2016-08-11T19:22:32.381097Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.2.1", "version" => "1.2.1"}, %{"inserted_at" => "2016-06-23T15:55:44.182182Z", "updated_at" => "2016-06-23T15:56:15.705457Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.2.0", "version" => "1.2.0"}, %{"inserted_at" => "2016-05-25T12:24:57.031112Z", "updated_at" => "2016-05-25T12:25:29.057377Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.2.0-rc.1", "version" => "1.2.0-rc.1"}, %{"inserted_at" => "2016-04-29T15:24:41.275558Z", "updated_at" => "2016-04-29T15:38:55.556466Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.2.0-rc.0", "version" => "1.2.0-rc.0"}, %{"inserted_at" => "2017-03-14T19:47:26.790320Z", "updated_at" => "2017-03-14T19:47:34.625911Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.1.8", "version" => "1.1.8"}, %{"inserted_at" => "2017-03-14T17:04:15.063928Z", "updated_at" => "2017-03-14T17:04:22.213040Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.1.7", "version" => "1.1.7"}, %{"inserted_at" => "2016-06-03T22:07:54.721805Z", "updated_at" => "2016-06-03T22:08:26.076953Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.1.6", "version" => "1.1.6"}, %{"inserted_at" => "2016-06-01T12:35:17.569603Z", "updated_at" => "2016-06-01T12:35:55.733880Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.1.5", "version" => "1.1.5"}, %{"inserted_at" => "2016-01-25T19:47:31.623848Z", "updated_at" => "2016-01-25T19:48:37.512777Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.1.4", "version" => "1.1.4"}, %{"inserted_at" => "2016-01-20T15:32:22.525885Z", "updated_at" => "2016-01-20T15:33:22.243228Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.1.3", "version" => "1.1.3"}, %{"inserted_at" => "2016-01-08T20:39:11.081587Z", "updated_at" => "2016-01-08T20:40:04.335523Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.1.2", "version" => "1.1.2"}, %{"inserted_at" => "2015-12-26T20:09:02.228508Z", "updated_at" => "2015-12-26T20:10:07.741500Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.1.1", "version" => "1.1.1"}, %{"inserted_at" => "2015-12-16T14:48:29.927423Z", "updated_at" => "2015-12-16T14:49:37.569491Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.1.0", "version" => "1.1.0"}, %{"inserted_at" => "2017-03-14T19:53:20.628021Z", "updated_at" => "2017-03-14T19:53:27.266758Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.0.6", "version" => "1.0.6"}, %{"inserted_at" => "2017-03-14T17:09:18.122255Z", "updated_at" => "2017-03-14T17:09:25.665052Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.0.5", "version" => "1.0.5"}, %{"inserted_at" => "2015-11-30T21:49:48.729377Z", "updated_at" => "2015-11-30T21:49:48.729390Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.0.4", "version" => "1.0.4"}, %{"inserted_at" => "2015-09-28T21:19:31.591477Z", "updated_at" => "2015-09-28T21:19:31.591494Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.0.3", "version" => "1.0.3"}, %{"inserted_at" => "2015-09-06T23:29:17.097130Z", "updated_at" => "2015-09-06T23:29:17.097143Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.0.2", "version" => "1.0.2"}, %{"inserted_at" => "2015-09-03T17:22:05.903641Z", "updated_at" => "2015-09-03T17:22:05.903653Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.0.1", "version" => "1.0.1"}, %{"inserted_at" => "2015-08-28T15:56:08.222838Z", "updated_at" => "2015-08-28T15:56:08.222853Z", "url" => "https://hex.pm/api/packages/phoenix/releases/1.0.0", "version" => "1.0.0"}, %{"inserted_at" => "2015-08-26T23:22:11.518975Z", "updated_at" => "2015-08-26T23:22:11.518990Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.17.1", "version" => "0.17.1"}, %{"inserted_at" => "2015-08-19T08:27:14.007231Z", "updated_at" => "2015-08-19T08:27:14.007247Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.17.0", "version" => "0.17.0"}, %{"inserted_at" => "2015-08-06T15:17:04.136403Z", "updated_at" => "2015-08-06T15:17:04.136433Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.16.1", "version" => "0.16.1"}, %{"inserted_at" => "2015-08-05T22:44:18.062196Z", "updated_at" => "2015-08-05T22:45:44.037179Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.16.0", "version" => "0.16.0"}, %{"inserted_at" => "2015-07-27T12:30:04.958046Z", "updated_at" => "2015-07-27T12:30:04.958054Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.15.0", "version" => "0.15.0"}, %{"inserted_at" => "2015-06-29T22:49:28.390776Z", "updated_at" => "2015-06-29T22:49:28.390789Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.14.0", "version" => "0.14.0"}, %{"inserted_at" => "2015-05-17T03:19:18.019179Z", "updated_at" => "2015-05-17T03:19:18.019191Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.13.1", "version" => "0.13.1"}, %{"inserted_at" => "2015-05-11T16:39:10.419453Z", "updated_at" => "2015-05-11T16:39:10.419467Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.13.0", "version" => "0.13.0"}, %{"inserted_at" => "2015-04-30T22:53:11.155606Z", "updated_at" => "2015-04-30T22:53:11.155616Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.12.0", "version" => "0.12.0"}, %{"inserted_at" => "2015-04-07T21:25:30.000000Z", "updated_at" => "2015-04-26T15:26:22.083938Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.11.0", "version" => "0.11.0"}, %{"inserted_at" => "2015-03-08T13:27:52.000000Z", "updated_at" => "2015-04-26T15:26:22.067418Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.10.0", "version" => "0.10.0"}, %{"inserted_at" => "2015-02-12T14:45:05.000000Z", "updated_at" => "2015-04-26T15:26:22.498222Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.9.0", "version" => "0.9.0"}, %{"inserted_at" => "2015-01-11T15:26:01.000000Z", "updated_at" => "2015-04-26T15:26:22.480652Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.8.0", "version" => "0.8.0"}, %{"inserted_at" => "2014-12-11T15:26:21.000000Z", "updated_at" => "2015-04-26T15:26:22.463670Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.7.2", "version" => "0.7.2"}, %{"inserted_at" => "2014-12-10T03:08:26.000000Z", "updated_at" => "2015-04-26T15:26:22.447825Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.7.1", "version" => "0.7.1"}, %{"inserted_at" => "2014-12-10T01:34:41.000000Z", "updated_at" => "2015-04-26T15:26:22.432175Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.7.0", "version" => "0.7.0"}, %{"inserted_at" => "2014-12-08T00:46:06.000000Z", "updated_at" => "2015-04-26T15:26:22.416453Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.6.2", "version" => "0.6.2"}, %{"inserted_at" => "2014-11-30T15:12:24.000000Z", "updated_at" => "2015-04-26T15:26:22.397879Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.6.1", "version" => "0.6.1"}, %{"inserted_at" => "2014-11-22T17:04:39.000000Z", "updated_at" => "2015-04-26T15:26:22.381470Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.6.0", "version" => "0.6.0"}, %{"inserted_at" => "2014-10-13T23:28:29.000000Z", "updated_at" => "2015-04-26T15:26:22.365536Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.5.0", "version" => "0.5.0"}, %{"inserted_at" => "2014-09-09T02:17:03.000000Z", "updated_at" => "2015-04-26T15:26:22.349705Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.4.1", "version" => "0.4.1"}, %{"inserted_at" => "2014-08-30T22:19:24.000000Z", "updated_at" => "2015-04-26T15:26:22.333942Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.4.0", "version" => "0.4.0"}, %{"inserted_at" => "2014-07-05T00:43:00.000000Z", "updated_at" => "2015-04-26T15:26:22.318226Z", "url" => "https://hex.pm/api/packages/phoenix/releases/0.3.1", ...}, %{"inserted_at" => "2014-07-01T02:01:42.000000Z", "updated_at" => "2015-04-26T15:26:22.298562Z", ...}, %{"inserted_at" => "2014-06-30T13:14:29.000000Z", ...}, %{...}, ...], "updated_at" => "2017-03-14T19:53:27.269162Z", "url" => "https://hex.pm/api/packages/phoenix"}

> mix hex.outdated
Dependency      Current  Latest  Update possible
httpoison       0.10.0   0.11.1  No
mix_test_watch  0.3.3    0.3.3
phoenix         1.2.3    1.2.3

A green version in latest means you have the latest version of a given package. Update possible indicates if your current requirement matches the latest version.
Run `mix hex.outdated APP` to see requirements for a specific dependency.

> mix hex.outdated httpoison
There is newer version of the dependency available 0.11.1 > 0.10.0!

Source   Requirement
mix.exs  ~> 0.10.0

A green requirement means that it matches the latest version.
