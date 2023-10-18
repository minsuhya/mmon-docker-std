#!/bin/bash

# config/nginx/conf.d/laravel.conf 도메인 대체

set -a
. ./.env
set +a
envsubst '$MMON_SCM_URL,$MMON_SELLER_URL,$MMON_API_URL,$MMON_BACKEND_URL' < ./config/nginx/conf.d/laravel.conf.template > ./config/nginx/conf.d/laravel.conf
