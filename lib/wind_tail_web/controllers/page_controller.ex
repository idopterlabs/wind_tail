defmodule WindTailWeb.PageController do
  use WindTailWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
