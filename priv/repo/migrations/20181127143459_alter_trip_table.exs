defmodule AegisApi.Repo.Migrations.AlterTripTable do
  use Ecto.Migration
  use Ecto.Schema
  @prefix "trip_data"

  def up do
   alter table(:trip_t, prefix: @prefix) do
      # cascade deletions, when a user is deleted all of his associated trips will also be deleted
     modify :driver_id, references("driver_t", column: "driver_id", on_delete: :delete_all)
    end
  end

  def down do
    execute "ALTER TABLE trip_data.trip_t DROP CONSTRAINT trip_t_driver_id_fkey"
  end
end
