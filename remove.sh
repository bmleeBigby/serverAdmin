#!/bin/bash
/usr/local/bin/docker-compose down

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

docker rmi serveradmin_db
docker rmi serveradmin_php

/usr/local/bin/docker-compose up -d

docker ps -a