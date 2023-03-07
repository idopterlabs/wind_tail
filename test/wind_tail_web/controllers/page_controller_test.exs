defmodule WindTailWeb.PageControllerTest do
  use WindTailWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "WindTail"
  end
end
