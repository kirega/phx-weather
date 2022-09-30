# File: my_app/entrypoint.sh
#!/bin/bash
# docker entrypoint script.

# assign a default for the database_user
DB_USER=${DATABASE_USER:-postgres}

# # wait until Postgres is ready
while ! pg_isready -h $DATABASE_HOST -U $DB_USER
do
  echo "$(date) - waiting for database to start user -> ${DB_USER} host -> ${DATABASE_HOST} "
  sleep 2
done

bin="/app/bin/weather"
eval "$bin eval \"Weather.Release.migrate\""
# start the elixir application
exec "$bin" "start"