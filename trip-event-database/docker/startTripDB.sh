#!/bin/bash

#load project options
source db.pwd

export POSTGRES_PWD=$POSTGRES_PWD

sudo -E docker-compose -f trip_db.yml -p tripeventdb up --build -d

