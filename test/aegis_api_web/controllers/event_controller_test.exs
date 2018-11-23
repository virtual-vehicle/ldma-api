defmodule AegisApiWeb.EventControllerTest do
  use AegisApiWeb.ConnCase

  test "GET /api/v1/events" do
    conn = build_conn()
        |> get("/api/v1/events")
        |> doc
    assert conn.status == 200
  end
end
