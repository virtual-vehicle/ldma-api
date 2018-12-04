defmodule AegisApiWeb.EventControllerTest do
  use AegisApiWeb.ConnCase
  import AegisApi.HelperTest

  describe "test events" do
    setup do
      create_jwt_for_driver()
    end

    test "GET /api/v1/events", %{conn: conn} do
      conn = get conn, "/api/v1/events"
      conn |> doc(description: "List all events for existing driver", operation_id: "list_events")
      assert conn.status == 200
    end
  end
end
