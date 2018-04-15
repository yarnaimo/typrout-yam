#!/bin/sh
docker-compose build
docker-compose run --rm web rake db:migrate
docker-compose run --rm web rails assets:precompile
docker-compose run --rm web rails assets:clean
docker-compose stop
docker-compose up -d
