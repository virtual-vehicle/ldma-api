defmodule AegisApiWeb.TripControllerTest do
  use AegisApiWeb.ConnCase
  import AegisApi.HelperTest

  describe "test trips" do
    setup do
          create_jwt_for_driver()
    end

    test "GET /api/v1/trips", %{conn: conn} do
      conn = get conn, "/api/v1/trips"
      conn |> doc(description: "List all trips for existing driver", operation_id: "list_trips")

      assert conn.status == 200
    end
  end
end
