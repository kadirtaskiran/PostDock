#!/usr/bin/env bash
docker-compose -f tests/extensions-are-available/docker-compose.yml up -d postgres
sleep 20
set -e


for EXTENSION in postgis nominatim;
do
    echo ">>> Checking now: $EXTENSION"
    docker-compose -f tests/extensions-are-available/docker-compose.yml exec -T postgres bash -c "gosu postgres psql -c 'CREATE EXTENSION $EXTENSION'"
done
#I can create extension in the running container


docker-compose -f tests/extensions-are-available/docker-compose.yml down