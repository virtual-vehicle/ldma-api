# Aegis api project

Aegis API is Phoenix Elixir backend project, which is fetching data from aeigs database and providing RESTful APIs.

## Install dependencies

### Phoenix dependencies

`mix deps.get`

### Node.js dependencies

`cd assets && npm install`

## Migrate and create database

`mix ecto.setup`

## Start the project

`mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Seed the database

`mix run priv/repo/seeds.exs`

## Database diagram

You can look at diagram [here](https://gitlab2.v2c2.at/CIS/aegis_api/raw/develop/dbdiagram/tripdb_schemas_diagram.png).

