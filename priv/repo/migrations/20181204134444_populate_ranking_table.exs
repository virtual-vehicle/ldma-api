defmodule AegisApi.Repo.Migrations.PopulateRankingTable do
  use Ecto.Migration
  use Ecto.Schema
  import Ecto.Query, only: [from: 2]

  def up do
    # insert data into ranking_t table
    driver_ids = from(d in AegisApiWeb.Driver, distinct: true, select: d.driver_id) |> AegisApi.Repo.all()

    if driver_ids do
      for id <- driver_ids do
        ranking = %AegisApiWeb.Ranking{
          driver_id: id,
          driving_distance: 100.00,
          driving_time: ~T[23:00:07],
          driving_score: 89
        }

        AegisApi.Repo.insert!(ranking)
      end
    end
  end

  def down do
    # remove all entries from ranking_t table
    AegisApi.Repo.truncate(AegisApiWeb.Ranking)
  end
end
