defmodule AegisApiWeb.EventControllerTest do
  use AegisApiWeb.ConnCase

  test "GET /api/v1/events" do
    conn = build_conn()
        |> get("/api/v1/events")
        |> doc(description: "List all events", operation_id: "list_events")
    assert conn.status == 200
  end

  test "GET /api/v1/events/:id" do
    conn = build_conn()
        |> get("/api/v1/events/1")
        |> doc(description: "Event with id 1", operation_id: "each_event")
    assert conn.status == 200
  end

end
