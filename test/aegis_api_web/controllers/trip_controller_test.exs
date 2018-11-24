defmodule AegisApiWeb.TripControllerTest do
  use AegisApiWeb.ConnCase

  test "GET /api/v1/trips" do
    conn = build_conn()
        |> get("/api/v1/trips")
        |> doc(description: "List all trips", operation_id: "list_trips")
    assert conn.status == 200
  end

  test "GET /api/v1/trips/:id" do
    conn = build_conn()
        |> get("/api/v1/trips/6bc7fda7-d70c-4957-b384-4ff3680c0200")
        |> doc(description: "Trip with id 6bc7fda7-d70c-4957-b384-4ff3680c0200", operation_id: "each_trip")
    assert conn.status == 200
  end
end
