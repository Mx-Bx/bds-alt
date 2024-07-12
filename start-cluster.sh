#!/bin/bash

####################
# Images & Volumes #
####################

docker build -t jupyter jupyter/.
docker build -t theia theia/.
docker build -t hive hive/.
docker build -t spark spark/.

docker volume create --name=shared-workspace

docker-compose up

cat access.txt