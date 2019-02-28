#!/bin/sh

psql tripdb -c "CREATE EXTENSION IF NOT EXISTS timescaledb CASCADE";
psql tripdb -c "CREATE EXTENSION IF NOT EXISTS postgis CASCADE;";

pg_restore --verbose --format=c --dbname=tripdb /var/lib/postgresql/backup/dump-tripdb-201903021959.backup

exit