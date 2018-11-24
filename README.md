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

## Running the API tests and regenrate API docs

We are using bureaucrat for testing and out of tests generating API documentation.

First you need to set the environment variable

`$Env:DOC = 1`

Then you can run tests with following command, which also updates API documentation

`mix test`

## API Documentation

You can look at API documentation [here](https://gitlab2.v2c2.at/CIS/aegis_api/blob/develop/docs/api-v1.md).

