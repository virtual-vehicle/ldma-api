defmodule AegisApiWeb.Schema do
  defmacro __using__(_) do
    quote do
      use Ecto.Schema
      @primary_key {:trip_id, autogenerate: true}
      @foreign_key_type :trip_id
    end
  end
end

defmodule AegisApiWeb.Measurement do
    use AegisApiWeb.Schema
    @derive {Poison.Encoder, only: [:measured_at, :acceleration_x, :acceleration_y, :engine_oil_temp_5c, :barometric_pressure_33, :fuel_tank_level_2f]}
    @schema_prefix "trip_data"

    schema "measurement_t" do
      field :measured_at, :naive_datetime
      field :gps_position, :
      field :gps_altitude, :
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


# "measured_at"	"timestamp without time zone"
# "trip_id"	"uuid"
# "gps_position"	"USER-DEFINED"
# "gps_altitude"	"numeric"
# "measured_after"	"double precision"
# "acceleration_x"	"double precision"
# "acceleration_y"	"double precision"
# "acceleration_z"	"double precision"
# "rotation_x"	"double precision"
# "rotation_y"	"double precision"
# "rotation_z"	"double precision"
# "fuel_system_status_03"	"double precision"
# "engine_load_calc_04"	"double precision"
# "engine_coolant_temp_05"	"double precision"
# "short_term_fuel_trim_1_06"	"double precision"
# "long_term_fuel_trim_1_07"	"double precision"
# "short_term_fuel_trim_2_08"	"double precision"
# "long_term_fuel_trim_2_09"	"double precision"
# "fuel_pressure_0a"	"double precision"
# "intake_manifold_pressure_0b"	"double precision"
# "engine_speed_0c"	"double precision"
# "vehicle_speed_0d"	"double precision"
# "timing_advance_before_tdc_0e"	"double precision"
# "intake_air_temp_0f"	"double precision"
# "maf_air_flow_10"	"double precision"
# "throttle_position_11"	"double precision"
# "fuel_tank_level_2f"	"double precision"
# "barometric_pressure_33"	"double precision"
# "catalyst_temp_1_1_3c"	"double precision"
# "catalyst_temp_2_1_3d"	"double precision"
# "catalyst_temp_1_2_3e"	"double precision"
# "catalyst_temp_2_2_3f"	"double precision"
# "abs_load_val_43"	"double precision"
# "throttle_position_relative_45"	"double precision"
# "ambient_air_temp_46"	"double precision"
# "throttle_position_absolute_b_47"	"double precision"
# "throttle_position_absolute_c_48"	"double precision"
# "throttle_position_absolute_d_49"	"double precision"
# "throttle_position_absolute_e_4a"	"double precision"
# "throttle_position_absolute_f_4b"	"double precision"
# "throttle_actuator_commanded_4c"	"double precision"
# "acc_pedal_positin_5a"	"double precision"
# "hybrid_bat_remaining_life_5b"	"double precision"
# "engine_oil_temp_5c"	"double precision"
# "injection_timing_5d"	"double precision"
# "fuel_rate_5e"	"double precision"
# "rail_pressure_59"	"double precision"
# "demand_engine_trq_perc_61"	"double precision"
# "actual_engine_trq_perc_62"	"double precision"
# "engine_ref_trq_63"	"double precision"
