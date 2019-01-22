# LDMA api project

LDMA API is Phoenix Elixir backend project, which is fetching data from aeigs database and providing RESTful APIs.

## Install dependencies

### Phoenix dependencies

`mix deps.get`

### Node.js dependencies

`cd assets && npm install`

## Migrate and create database

`mix ecto.setup`

## Run migrations

`mix ecto.migrate`

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

You can look at API documentation [here](https://github.com/nadzic/ldma-api/blob/develop/docs/api-v1.md).

## API Mocks Documentation

You can look at API Mocks documentation [here](https://app.apiary.io/aegisproject).


### ExCoveralls - report tool for Elixir

We are using ExCoveralls, an Elixir library that reports test coverage statistics. It uses Erlang's cover to generate coverage information, and posts the test coverage results to coveralls.io through the json API.

First you need to set the environment variable

`$Env:MIX_ENV = "test"`

Then you can run following command to show coverage information, which also updates API documentation

`mix coveralls`

You can look at ExCoveralls documentation [here](https://github.com/parroty/excoveralls).

## Docker

# Building Docker Images with Dockerfiles

`docker-compose build`

# Builds, (re)creates, starts, and attaches to containers for a service

Linked services will be started, unless they are already running.

`docker-compose up`

## AWS 

You can look at AWS documentation [here](https://docs.aws.amazon.com/).

For AWS deployment you can read:
- AWS CodeCommit Repository [here](https://docs.aws.amazon.com/codecommit/latest/userguide/how-to-create-repository.html)
- Continuous Deployment with AWS CodePipeline [here](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-cd-pipeline.html)
- Getting Started Using Elastic Beanstalk [here](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/GettingStarted.html)

You can visit [`http://ldma.us-east-2.elasticbeanstalk.com`](http://ldma.us-east-2.elasticbeanstalk.com) from your browser.