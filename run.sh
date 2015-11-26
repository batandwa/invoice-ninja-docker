#!/bin/bash

if [ -z "${COMPOSE_FILE}" ]; then export COMPOSE_FILE="docker-compose-prod.yml"; fi
echo "Running $COMPOSE_FILE"

#docker run --name `basename $PWD`-db -e MYSQL_ROOT_PASSWORD=becc0d043c35e2036 -v $PWD/data:/var/mysql -d mysql/mysql-server
docker-compose up -d
