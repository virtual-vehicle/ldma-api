defmodule AegisApiWeb.TripController do
  use AegisApiWeb, :controller
  import Ecto.Query, only: [from: 2]

  # def index(conn, _params) do
  #   trips = AegisApiWeb.Trip |> AegisApi.Repo.all
  #   AegisApiWeb.Helper.pretty_json(conn, trips)
  # end

  def index(conn, _params) do
    driver = Guardian.Plug.current_resource(conn)
    trips = from(t in AegisApiWeb.Trip, where: t.driver_id == ^driver.driver_id, select: t)|> AegisApi.Repo.all()
    AegisApiWeb.Helper.pretty_json(conn, trips)
  end

  def create(conn, %{"start_date" => start_date, "end_date" => end_date}) do
    driver = Guardian.Plug.current_resource(conn)
    from_start_date = NaiveDateTime.from_iso8601!(start_date <> " " <> "00:00:00")
    to_end_date = NaiveDateTime.from_iso8601!(end_date <> " " <> "23:59:59")

    trips = from(t in AegisApiWeb.Trip, where: t.driver_id == ^driver.driver_id and
                                               t.start_at >= ^from_start_date and
                                               ^to_end_date >= datetime_add(t.start_at, t.duration, "second"), select: t )|> AegisApi.Repo.all()

    AegisApiWeb.Helper.pretty_json(conn, trips)
  end
end
