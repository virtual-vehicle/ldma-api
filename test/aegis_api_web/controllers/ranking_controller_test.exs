defmodule AegisApiWeb.RankingControllerTest do
  use AegisApiWeb.ConnCase
  import AegisApi.HelperTest

  describe "test rankings" do
    setup do
      create_jwt_for_driver()
    end

    test "GET /api/v1/rankings", %{conn: conn} do
      conn = get(conn, "/api/v1/rankings")
      conn |> doc(description: "List all rankings for all drivers", operation_id: "list_rankings")

      assert conn.status == 200
    end
  end
end
