defmodule WeatherWeb.PageControllerTest do
  use WeatherWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "weather"
    assert html_response(conn, 200) =~ "Humidity"
  end
end
