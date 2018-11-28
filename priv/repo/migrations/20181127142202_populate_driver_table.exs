defmodule AegisApi.Repo.Migrations.PopulateDriverTable do
  use Ecto.Migration
  use Ecto.Schema
  import Ecto.Query, only: [from: 2]

  def up do
    # insert data into driver_t table
    trip_driver_ids = from(p in AegisApiWeb.Trip, distinct: true, select: p.driver_id) |> AegisApi.Repo.all()

    if trip_driver_ids do
      for id <- trip_driver_ids do
        driver = %AegisApiWeb.Driver{
          driver_id: id,
          username: Integer.to_string(id),
          password: "pass"
        }

        AegisApi.Repo.insert!(driver)
      end
    end
  end

  def down do
    # remove all entries from driver_t table
    AegisApi.Repo.truncate(AegisApiWeb.Driver)
  end
end
