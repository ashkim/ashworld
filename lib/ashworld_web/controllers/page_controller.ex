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

    redirect(conn, to: ~p"/redirect_test")

  end

  @spec redirect_test(Plug.Conn.t(), any()) :: Plug.Conn.t()
  def redirect_test(conn, _params) do
    conn
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render(:home, layout: false)
  end
end
