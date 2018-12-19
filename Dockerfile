# ./Dockerfile

# Extend from the official Elixir image
FROM elixir:latest

# Install psql client
RUN apt-get update && \
  apt-get install -y postgresql-client

# Install NodeJS and the NMP
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash
RUN apt-get install --yes nodejs

# Create app directory and copy the Elixir projects into it
RUN mkdir /app
COPY . /app
WORKDIR /app

# Install hex package manager
# By using --force, we don’t need to type “Y” to confirm the installation
RUN mix local.hex --force

# Install rebar (Erlang build tool)
RUN mix local.rebar --force

# Install all production dependencies
RUN mix deps.get

# Compile all dependencies
RUN mix deps.compile

# Compile the entire project
RUN mix compile

# Run the entry file, which checks if the driver_t table exists 
RUN chmod +x ./docker-entrypoint.sh
ENTRYPOINT ["./docker-entrypoint.sh"]
