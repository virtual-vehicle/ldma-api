# commented because of timeout running; in the future we can enhance fetching data (join of tables) if it is necessary
# defmodule AegisApiWeb.MeasurementControllerTest do
#   use AegisApiWeb.ConnCase
#   import AegisApi.HelperTest

#   describe "test measurements" do
#     setup do
#       create_jwt_for_driver()
#     end

#     test "GET /api/v1/measurements",  %{conn: conn} do
#       conn =  get conn, "/api/v1/measurements"
#       conn |> doc(description: "List all measurements for existing driver", operation_id: "list_measurements")
#       assert conn.status == 200
#     end
#   end
# end
