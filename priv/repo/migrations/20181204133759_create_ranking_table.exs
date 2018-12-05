defmodule AegisApi.Repo.Migrations.CreateRankingTable do
  use Ecto.Migration
  use Ecto.Schema
  @prefix "trip_data"

  def change do
    create table(:ranking_t, prefix: @prefix, primary_key: false) do
      add :ranking_id, :binary_id, primary_key: true, autogenerate: true
      add :driver_id, references("driver_t", column: "driver_id", on_delete: :delete_all, type: :integer)
      add :driving_distance, :float
      add :driving_time, :time
      add :driving_score, :integer
    end
  end
end
