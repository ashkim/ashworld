defmodule AshworldWeb.PageController do
  use AshworldWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    # render(conn, :home, layout: false)

    # this is how we can control the resp manually:
    # conn
    # |> put_resp_content_type("text/plain")
    # |> send_resp(201, "")

    redirect(conn, to: ~p"/products")

  end

end
