defmodule AegisApiWeb.TripScore do
  use Ecto.Schema

  # choose data to be encoded
  @derive {Poison.Encoder, only: [:trip_id, :risk_score]}
  @schema_prefix "trip_data"

  @primary_key {:trip_id, :binary_id, autogenerate: true}
  schema "risk_score_v" do
    field :risk_score, :integer
  end
end
