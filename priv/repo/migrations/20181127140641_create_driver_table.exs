
defmodule AegisApi.Repo.Migrations.CreateDriverTable do
  use Ecto.Migration
  use Ecto.Schema
  import Ecto.Query, only: [from: 2]
  @prefix "trip_data"

  def change do
    create table(:driver_t, prefix: @prefix, primary_key: false) do
      add :driver_id, :integer, primary_key: true
      add :username, :string
      add :password, :string
    end

    # to ensure that the first portion of migration is executed before the data inserting
    flush()

    # insert data into driver_t table
    trips_driver_id = from(p in AegisApiWeb.Trip, distinct: true, select: p.driver_id) |> AegisApi.Repo.all()

    if trips_driver_id do
      for id <- trips_driver_id do
        driver = %AegisApiWeb.Driver{
          driver_id: id,
          username: Integer.to_string(id),
          password: "pass"
        }

        AegisApi.Repo.insert!(driver)
      end
    end
  end
end
