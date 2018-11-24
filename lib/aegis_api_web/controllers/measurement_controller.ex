defmodule AegisApiWeb.MeasurementController do
  use AegisApiWeb, :controller

  def index(conn, _params) do
    measurements = AegisApiWeb.Measurement |> AegisApi.Repo.all
    AegisApiWeb.Helper.pretty_json(conn, measurements)
  end

  def show(conn, %{"id" => id}) do
    trip = AegisApiWeb.Trip |> AegisApi.Repo.get_by(trip_id: id)
    AegisApiWeb.Helper.pretty_json(conn, trip)
  end

end
