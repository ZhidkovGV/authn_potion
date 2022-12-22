defmodule AuthnPotionWeb.PageController do
  use AuthnPotionWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
