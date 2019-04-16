defmodule AegisApiWeb.GraphTripScoreController do
  use AegisApiWeb, :controller
  import Ecto.Query, only: [from: 2]

  def index(conn, _params) do
    driver = Guardian.Plug.current_resource(conn)

    trip_score = from(t in AegisApiWeb.Trip, join: ts in AegisApiWeb.TripScore,
      on: t.trip_id == ts.trip_id,
      where: t.driver_id == ^driver.driver_id,
      order_by: [desc: t.start_at],
      limit: 20,
      select: %{trip_id: t.trip_id, start_at: t.start_at, end_at: datetime_add(t.start_at, t.duration, "second"),risk_score: ts.risk_score}) |> AegisApi.Repo.all()

    AegisApiWeb.Helper.pretty_json(conn, Enum.sort(trip_score))
  end
end
