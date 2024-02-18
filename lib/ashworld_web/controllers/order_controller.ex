defmodule AshworldWeb.OrderController do
  use AshworldWeb, :controller

  alias Ashworld.Orders

  def create(conn, _) do
    case Orders.complete_order(conn.assigns.cart) do
      {:ok, order} ->
        conn
        |> put_flash(:info, "Order created successfully.")
        |> redirect(to: ~p"/orders/#{order}")

      {:error, _reason} ->
        conn
        |> put_flash(:error, "There was and error processing your order")
        |> redirect(to: ~p"/cart")
    end
  end

  def show(conn, %{"id" => id}) do
    order = Orders.get_order!(conn.assigns.current_uuid, id)
    render(conn, :show, order: order)
  end
end
