defmodule AegisApiWeb.MeasurementControllerTest do
  use AegisApiWeb.ConnCase

  test "GET /api/v1/measurements" do
    conn = build_conn()
        |> get("/api/v1/measurements")
        |> doc(description: "List all measurements", operation_id: "list_measurements")
    assert conn.status == 200
  end

  # TODO - we need to add id for measurments in the datbles
  test "GET /api/v1/measurements/:measured_at" do
    conn = build_conn()
        |> get("/api/v1/measurements/2000-01-01T23:00:07")
        |> doc(description: "Measurement with measured_at 2000-01-01T23:00:07", operation_id: "each_measurement")
    assert conn.status == 200
  end
end
