defmodule AegisApiWeb.RankingInfoController do
  use AegisApiWeb, :controller
  # import Ecto.Query, only: [from: 2]

  def index(conn, _params) do
    rankings = AegisApiWeb.Ranking |> AegisApi.Repo.all()
    AegisApiWeb.Helper.pretty_json(conn, rankings)
  end
end
