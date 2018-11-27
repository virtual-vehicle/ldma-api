# defmodule AegisApi.Repo.Migrations.AlterEvent do
#   use Ecto.Migration
#   use Ecto.Schema
#   @prefix "trip_data"

#   def change do
#     alter table(:event_t, prefix: @prefix) do
#       # cascade deletions, when a user is deleted all of his associated events will also be deleted.
#       modify :driver_id, references(:driver_t, prefix: @prefix, on_delete: :delete_all)
#     end
#   end
# end
