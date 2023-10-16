#!/bin/bash

# config/nginx/conf.d/laravel.conf 도메인 대체

set -a
. ./.env
set +a
envsubst < ./config/nginx/conf.d/laravel.conf.template > ./config/nginx/conf.d/laravel.conf
