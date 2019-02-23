#!/bin/bash
# fail if we error out
set -e

# Wait for database to come up
until psql -h $PGHOST -p $PGPORT -U $PGUSER -c '\q' 2>/dev/null; do
  >&2 echo "Postgres is unavailable - waiting"
  sleep 10
done

mix ecto.rollback --all
mix ecto.migrate
mix phx.server 