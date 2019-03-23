-- new table that stores event counts
CREATE TABLE trip_data.event_count_t
(
    trip_id uuid NOT NULL,
    n_brake integer NOT NULL,
    n_acceleration integer NOT NULL,
    n_standstill integer NOT NULL,
	n_pothole integer NOT NULL,
    PRIMARY KEY (trip_id),
    CONSTRAINT fk_event_count_trip FOREIGN KEY (trip_id)
        REFERENCES trip_data.trip_t (trip_id) MATCH FULL
        ON UPDATE CASCADE
        ON DELETE RESTRICT
        DEFERRABLE
)
WITH (
    OIDS = FALSE
);

ALTER TABLE trip_data.event_count_t
    OWNER to postgres;


-- new field in trip_t that stores simplified GPS tracks
ALTER TABLE trip_data.trip_t
    ADD COLUMN simplified_gps_track geometry NOT NULL;


-- new fields that can store processing errors
ALTER TABLE raw_data.unprocessed_trip_t
    ADD COLUMN last_processing_error text DEFAULT NULL;
	
ALTER TABLE trip_data.unprocessed_trip_t
    ADD COLUMN last_processing_error text DEFAULT NULL;


-- new view with that computes discounted event rate
CREATE OR REPLACE VIEW trip_data.event_rate_v AS
SELECT
  trip_id,
  CASE
    WHEN d < 1.0/3.0 THEN NULL
    WHEN d < 2.0 THEN (11-3.0*d)*n/10.0
    ELSE n/d
  END AS event_rate_discounted
FROM
  (SELECT trip_t.trip_id, n_brake + n_acceleration AS n, duration/60 AS d
   FROM  trip_data.event_count_t
     LEFT JOIN trip_data.trip_t
       ON trip_t.trip_id = event_count_t.trip_id
  )nd;

ALTER TABLE trip_data.event_rate_v
    OWNER TO postgres;


--------------------------------------------------
-- new schema risk score related parameters
CREATE SCHEMA risk_score_config
    AUTHORIZATION postgres;
	
	
-- materialized view for risk score "bins"
CREATE MATERIALIZED VIEW risk_score_config.risk_score_mv
AS
SELECT
  100-(k*100)::integer AS risk_score,
  percentile_cont(k) WITHIN GROUP (ORDER BY event_rate_discounted ASC) AS lower_bound
FROM
  trip_data.event_rate_v,
  generate_series(0, 1, 0.01) AS k
GROUP BY k
WITH DATA;

ALTER TABLE risk_score_config.risk_score_mv
    OWNER TO postgres;

-- risk score helper functions
CREATE FUNCTION risk_score_config.risk_score_lower_thresholds()
    RETURNS double precision[]
    LANGUAGE 'sql'
    STABLE LEAKPROOF STRICT PARALLEL SAFE
AS
$BODY$
  SELECT ARRAY(SELECT lower_bound
               FROM risk_score_config.risk_score_mv
			   ORDER BY lower_bound ASC)
$BODY$;

ALTER FUNCTION risk_score_config.risk_score_lower_thresholds()
    OWNER TO postgres;

--
CREATE FUNCTION risk_score_config.risk_score_values()
    RETURNS integer[]
    LANGUAGE 'sql'
    STABLE LEAKPROOF STRICT PARALLEL SAFE
AS
$BODY$
  SELECT ARRAY(SELECT risk_score
               FROM risk_score_config.risk_score_mv
			   ORDER BY lower_bound ASC)
$BODY$;

ALTER FUNCTION risk_score_config.risk_score_values()
    OWNER TO postgres;

-- risk score view
CREATE OR REPLACE VIEW trip_data.risk_score_v AS
SELECT
  trip_id,
  (risk_score_config.risk_score_values())
     [width_bucket(event_rate_discounted, (risk_score_config.risk_score_lower_thresholds()))] AS risk_score
FROM trip_data.event_rate_v;

ALTER TABLE trip_data.risk_score_v
    OWNER TO postgres;

