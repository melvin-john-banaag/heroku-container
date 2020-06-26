#!/bin/bash

echo 'Removing existing Heroku-App Container'
docker container rm $(docker container ls -aqf name=heroku-demo-container)

echo 'Building Dockerfile'
docker build -t melbsmelbs/heroku-container:latest .

echo -e '\t'
echo 'Running Container'
docker run -d -p 8080:8080 --name heroku-demo-container melbsmelbs/heroku-container

echo -e '\t'
echo 'Container must be running'
docker ps -a
