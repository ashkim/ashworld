defmodule AshworldWeb.CartController do
  use AshworldWeb, :controller

  alias Ashworld.ShoppingCart

  def show(conn, _params) do
    render(conn, :show, changeset: ShoppingCart.change_cart(conn.assigns.cart))
  end

end
