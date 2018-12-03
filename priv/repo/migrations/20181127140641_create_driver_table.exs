
defmodule AegisApi.Repo.Migrations.CreateDriverTable do
  use Ecto.Migration
  use Ecto.Schema
  @prefix "trip_data"

  def change do
    create table(:driver_t, prefix: @prefix, primary_key: false) do
      add :driver_id, :integer, primary_key: true
      add :username, :string
      add :password_hash, :string
    end
  end
end
