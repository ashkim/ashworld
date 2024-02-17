defmodule AshworldWeb.HelloController do
  use AshworldWeb, :controller

  plug :param_logger_plug

  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, :show, messenger: messenger)
  end

  defp param_logger_plug(conn, _) do
    Enum.map_join(conn.params, ", ", fn {key, val} -> ~s{"#{key}": "#{val}"} end)
    |> IO.puts()

    conn
  end
end
