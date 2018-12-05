defmodule AegisApiWeb.Ranking do
  use Ecto.Schema

  # choose data to be encoded
  @derive {Poison.Encoder, only: [:driver_id, :driving_distance, :driving_time, :driving_score]}
  @schema_prefix "trip_data"

  @primary_key {:ranking_id, :binary_id, autogenerate: true}
  schema "ranking_t" do
    belongs_to :driver_t, AegisApiWeb.Driver, foreign_key: :driver_id, references: :driver_id, define_field: false
    field :driver_id, :integer
    field :driving_distance, :float
    field :driving_time, :time
    field :driving_score, :integer
  end
end
