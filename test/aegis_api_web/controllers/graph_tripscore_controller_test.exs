defmodule AegisApiWeb.TripControllerTest do
  use AegisApiWeb.ConnCase
  import AegisApi.HelperTest

  describe "test graph tripscore" do
    setup do
      create_jwt_for_driver()
    end

    test "GET /api/v1/graph_tripscore", %{conn: conn} do
      conn = get conn, "/api/v1/graph_tripscore"
      conn |> doc(description: "List tripscore for 20 latest trips for existing driver", operation_id: "list_tripscore")

      assert conn.status == 200
    end
  end
end
