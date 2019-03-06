defmodule AegisApiWeb.Ranking do
  use Ecto.Schema

  @schema_prefix "trip_data"

  @primary_key false
  schema "ranking_v" do
    field :driver_id, :integer
    field :driving_distance, :float
    field :driving_time, :float
    field :driver_score, :decimal
  end
end
