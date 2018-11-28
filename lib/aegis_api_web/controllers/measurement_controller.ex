defmodule AegisApiWeb.MeasurementController do
  use AegisApiWeb, :controller

  def index(conn, _params) do
    measurements = AegisApiWeb.Measurement |> AegisApi.Repo.all
    AegisApiWeb.Helper.pretty_json(conn, measurements)
  end

  def show(conn, %{"id" => measured_at}) do
    measurement = AegisApiWeb.Measurement |> AegisApi.Repo.get_by(measured_at: measured_at)
    AegisApiWeb.Helper.pretty_json(conn, measurement)
  end

end
