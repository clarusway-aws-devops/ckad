#!/bin/bash


echo starting... # to test stdout output in /var/log/killercoda

docker container rm -f $(docker ps -aq)
docker run -d ubuntu sleep 3600
docker run -d alpine sleep 3600
docker run --name redcon -d alpine sleep 3600
docker run --name bluecon -d alpine sleep 3600
docker run --name whitecon -d alpine sleep 3600
docker run ubuntu
docker run alpine
docker run alpine
touch /tmp/finished