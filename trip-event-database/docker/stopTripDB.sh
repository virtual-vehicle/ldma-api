#!/bin/bash

export POSTGRES_PWD=blabla

sudo -E docker-compose -f trip_db.yml -p tripeventdb down
