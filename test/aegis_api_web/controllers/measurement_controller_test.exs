defmodule AegisApiWeb.MeasurementControllerTest do
  use AegisApiWeb.ConnCase

  # test "GET /api/v1/measurements" do
  #   conn = build_conn()
  #       |> get("/api/v1/measurements")
  #       |> doc(description: "List all measurements", operation_id: "list_measurements")
  #   assert conn.status == 200
  # end

  # TODO - we need to add id for measurments in the datbles
  test "GET /api/v1/measurements/:trip_id" do
    conn = build_conn()
        |> get("/api/v1/measurements/8653e115-aebc-4ded-a785-a20e370e0120")
        |> doc(description: "Measurement with trip_id 8653e115-aebc-4ded-a785-a20e370e0120", operation_id: "each_measurement")
    assert conn.status == 200
  end
end
