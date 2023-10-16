#!/bin/sh

set -a
. ./.env
set +a

envsubst < ./config/nginx/conf.d/laravel.conf.template > ./config/nginx/conf.d/laravel.conf

