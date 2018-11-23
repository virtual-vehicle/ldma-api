defmodule AegisApiWeb.MeasurementControllerTest do
  use AegisApiWeb.ConnCase

  test "GET /api/v1/measurements" do
    conn = build_conn()
        |> get("/api/v1/measurements")
        |> doc
    assert conn.status == 200
  end
end
