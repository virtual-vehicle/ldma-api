#!/bin/bash
# fail if we error out
set -e

# Wait for database to come up
until psql -h $PGHOST -p $PGPORT -U $PGUSER -c '\q' 2>/dev/null; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

# Check if driver_t table does not exist
if [[ `psql -tAc "SELECT EXISTS (SELECT 1 FROM information_schema.tables 
  	              WHERE table_schema = 'trip_data' 
                  AND table_name = 'driver_t');"` = 'f' ]]; then

  # Wait until unprocessed trips are inserted
  while psql -c "SELECT * FROM raw_data.unprocessed_trip_t" | cut -d \| -f 1 | grep -qw "(0 rows)";  do 
    >&2 echo "unprocessed trips doesn't exist - waiting"; 
    sleep 5; 
  done

  # Wait until all trips are processed
  until psql -c "SELECT * FROM raw_data.unprocessed_trip_t" | cut -d \| -f 1 | grep -qw "(0 rows)";  do 
    >&2 echo "unprocessed trips exist - waiting"; 
    sleep 5; 
  done
fi

mix ecto.migrate
mix phx.server 