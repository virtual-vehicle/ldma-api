defmodule AegisApiWeb.RankingController do
  use AegisApiWeb, :controller

  def index(conn, _params) do
    rankings = AegisApiWeb.Ranking |> AegisApi.Repo.all()
    AegisApiWeb.Helper.pretty_json(conn, rankings)
  end

  def show(conn, _params) do
    Guardian.Plug.current_resource(conn)
    rankings = AegisApiWeb.Ranking |> AegisApi.Repo.all()
    AegisApiWeb.Helper.pretty_json(conn, rankings)
  end
end
