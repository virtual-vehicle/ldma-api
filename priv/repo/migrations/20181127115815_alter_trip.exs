# defmodule AegisApi.Repo.Migrations.AlterTrip do
#   use Ecto.Migration
#   use Ecto.Schema
#   @prefix "trip_data"

#   def change do
#     alter table(:trip_t, prefix: @prefix) do
#       # cascade deletions, when a user is deleted all of his associated trips will also be deleted
#       modify :driver_id, references(:driver_t, prefix: @prefix, on_delete: :delete_all)
#     end
#   end
# end
