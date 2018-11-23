defmodule AegisApiWeb.TripControllerTest do
  use AegisApiWeb.ConnCase

  test "GET /api/v1/trips" do
    conn = build_conn()
        |> get("/api/v1/trips")
        |> doc(description: "List all trips", operation_id: "list_trips")
    assert conn.status == 200
  end
end
