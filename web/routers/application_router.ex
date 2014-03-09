defmodule ApplicationRouter do
  use Dynamo.Router

  prepare do
    # Pick which parts of the request you want to fetch
    # You can comment the line below if you don't need
    # any of them or move them to a forwarded router
    conn.fetch([:cookies, :params])
    Dytutorial.initDb
  end

  # It is common to break your Dynamo into many
  # routers, forwarding the requests between them:
  # forward "/posts", to: PostsRouter

  get "/" do
    conn = conn.assign(:title, "Welcome to Dynamo!")
    render conn, "index.html"
  end

  get "/hello/nurse" do
    conn.resp(200, "Dytutorial.initDb")
  end

  get "/version" do
    conn.resp 200, ExJSON.generate [version: "1.0"]
  end

  get "/hello/:name" do
    conn.resp 200, ExJSON.generate [name: name]
  end
end
