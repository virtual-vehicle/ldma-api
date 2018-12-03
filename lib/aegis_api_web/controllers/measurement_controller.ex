defmodule AegisApiWeb.MeasurementController do
  use AegisApiWeb, :controller
  import Ecto.Query, only: [from: 2]

  def index(conn, _params) do
    measurements = AegisApiWeb.Measurement |> AegisApi.Repo.all
    AegisApiWeb.Helper.pretty_json(conn, measurements)
  end

  def show(conn, _params) do
    driver = Guardian.Plug.current_resource(conn)
    measurements = from(m in AegisApiWeb.Measurement, join: t in AegisApiWeb.Trip, on: m.trip_id == t.trip_id, where: t.driver_id == ^driver.driver_id, select: m) |> AegisApi.Repo.all()
    AegisApiWeb.Helper.pretty_json(conn, measurements)
 end
end
