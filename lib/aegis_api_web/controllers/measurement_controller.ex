defmodule AegisApiWeb.MeasurementController do
  use AegisApiWeb, :controller
  import Ecto.Query, only: [from: 2]

  def index(conn, _params) do
    measurements = AegisApiWeb.Measurement |> AegisApi.Repo.all
    AegisApiWeb.Helper.pretty_json(conn, measurements)
  end

  def show(conn, %{"id" => trip_id}) do
    measurement = from(m in AegisApiWeb.Measurement, where: m.trip_id == ^trip_id, select: m, distinct: true)
    |> AegisApi.Repo.all()
    AegisApiWeb.Helper.pretty_json(conn, measurement)
  end
end
