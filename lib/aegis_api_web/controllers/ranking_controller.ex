defmodule AegisApiWeb.RankingInfoController do
  use AegisApiWeb, :controller
  import Ecto.Query, only: [from: 2]

  def index(conn, _params) do
    rankings = from(r in AegisApiWeb.Ranking,
                select: %{driver_id: r.driver_id,
                          driving_distance: (fragment("round(?::decimal / 1000)",r.driving_distance)), # driving distance in km
                          driving_time: (fragment("round(?::decimal / 60)",r.driving_time)), # driving time in min
                          driver_score: (fragment("round(?::decimal, 2)", r.driver_score))}) |> AegisApi.Repo.all()
    AegisApiWeb.Helper.pretty_json(conn, rankings)
  end
end
