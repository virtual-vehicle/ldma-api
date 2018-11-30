defmodule AegisApiWeb.Event do
  use Ecto.Schema

  @derive {Poison.Encoder, only: [:event_id, :start_at, :start_position, :end_after, :end_position, :duration, :event_details]} #choose data to be encoded
  @schema_prefix "trip_data"

  @primary_key {:event_id, :id, autogenerate: true}
  schema "event_t" do
    belongs_to :trip_t, AegisApiWeb.Trip, foreign_key: :trip_id, references: :trip_id, define_field: false
    field :driver_id, :integer
    field :vehicle_id, :integer
    field :event_type, :string
    field :trip_id, :binary_id
    field :start_at, :naive_datetime
    field :start_after, :float
    field :start_position, Geo.PostGIS.Geometry
    field :start_altitude, :decimal
    field :end_at, :naive_datetime
    field :end_after, :float
    field :end_position, Geo.PostGIS.Geometry
    field :end_altitude, :decimal
    field :marker_position, Geo.PostGIS.Geometry
    field :duration, :float
    field :event_details, :map
  end
end
