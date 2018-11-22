defmodule AegisApiWeb.MeasurementController do
  use AegisApiWeb, :controller

  def index(conn, _params) do
    measurements = AegisApiWeb.Measurement |> AegisApi.Repo.all
    AegisApiWeb.Helpers.pretty_json(conn, measurements)
  end
end
