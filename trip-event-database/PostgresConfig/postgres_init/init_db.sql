CREATE SCHEMA trip_data
    AUTHORIZATION postgres;

CREATE EXTENSION IF NOT EXISTS postgres_fdw CASCADE;
CREATE EXTENSION IF NOT EXISTS timescaledb CASCADE;
CREATE EXTENSION IF NOT EXISTS postgis CASCADE;

CREATE TYPE trip_data.event_type AS ENUM
    ('BRAKE', 'ACCELERATION', 'STANDSTILL', 'POTHOLE');

ALTER TYPE trip_data.event_type
    OWNER TO postgres;

CREATE SERVER remote_tripdb_server
        FOREIGN DATA WRAPPER postgres_fdw
        OPTIONS (host 'research4.v2c2.at', port '9001', dbname 'tripdb');
        
CREATE USER MAPPING FOR postgres
        SERVER remote_tripdb_server
        OPTIONS (user 'postgres', password 'pGQPU@Dt!^j%49*f2uv0!hujsd');
        
IMPORT FOREIGN SCHEMA trip_data
    FROM SERVER remote_tripdb_server INTO trip_data;