#!/bin/sh

# Init
PROJECT_DIR="mmon-solution"
API_DIR="api"
BACKEND_DIR="backend"
SCM_DIR="scm"

# Docker compose build
docker compose build

# Docker compose up
docker compose up -d

# Compose install In Docker Container
docker exec -w /var/www/$SCM_DIR -it $(docker container ls -a -q --filter "name=^$PROJECT_DIR-$SCM_DIR") sh -c "composer install"
docker exec -w /var/www/$API_DIR -it $(docker container ls -a -q --filter "name=^$PROJECT_DIR-$API_DIR") sh -c "composer install"
docker exec -w /var/www/$BACKEND_DIR -it $(docker container ls -a -q --filter "name=^$PROJECT_DIR-$BACKEND_DIR") sh -c "composer install"
