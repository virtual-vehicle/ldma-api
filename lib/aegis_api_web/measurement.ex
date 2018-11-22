
defmodule AegisApiWeb.Measurement do
    use Ecto.Schema

    @derive {Poison.Encoder, only: [:measured_at, :acceleration_x, :acceleration_y, :engine_oil_temp_5c, :fuel_tank_level_2f]} #choose data to be shown
    @schema_prefix "trip_data"

    @primary_key false
    schema "measurement_t" do
      field :trip_id, :binary_id, primary_key: true
      field :measured_at, :naive_datetime, primary_key: true
      belongs_to :trip_t, AegisApiWeb.Trip, foreign_key: :trip_id, references: :trip_id, define_field: false
      field :gps_position, Geo.PostGIS.Geometry
      field :gps_altitude, :decimal
      field :measured_after, :float
      field :acceleration_x, :float
      field :acceleration_y, :float
      field :acceleration_z, :float
      field :rotation_x, :float
      field :rotation_y, :float
      field :rotation_z, :float
      field :fuel_system_status_03, :float
      field :engine_load_calc_04, :float
      field :engine_coolant_temp_05, :float
      field :short_term_fuel_trim_1_06, :float
      field :long_term_fuel_trim_1_07, :float
      field :short_term_fuel_trim_2_08, :float
      field :long_term_fuel_trim_2_09, :float
      field :fuel_pressure_0a, :float
      field :intake_manifold_pressure_0b, :float
      field :engine_speed_0c, :float
      field :vehicle_speed_0d, :float
      field :timing_advance_before_tdc_0e, :float
      field :intake_air_temp_0f, :float
      field :maf_air_flow_10, :float
      field :throttle_position_11, :float
      field :fuel_tank_level_2f, :float
      field :barometric_pressure_33, :float
      field :catalyst_temp_1_1_3c, :float
      field :catalyst_temp_2_1_3d, :float
      field :catalyst_temp_1_2_3e, :float
      field :catalyst_temp_2_2_3f, :float
      field :abs_load_val_43, :float
      field :throttle_position_relative_45, :float
      field :ambient_air_temp_46, :float
      field :throttle_position_absolute_b_47, :float
      field :throttle_position_absolute_c_48, :float
      field :throttle_position_absolute_d_49, :float
      field :throttle_position_absolute_e_4a, :float
      field :throttle_position_absolute_f_4b, :float
      field :throttle_actuator_commanded_4c, :float
      field :acc_pedal_positin_5a, :float
      field :hybrid_bat_remaining_life_5b, :float
      field :engine_oil_temp_5c, :float
      field :fuel_rate_5e, :float
      field :rail_pressure_59, :float
      field :demand_engine_trq_perc_61, :float
      field :actual_engine_trq_perc_62, :float
      field :engine_ref_trq_63, :float
    end
end
