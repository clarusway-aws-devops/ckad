#!/bin/bash


echo starting... # to test stdout output in /var/log/killercoda

docker container rm -f $(docker ps -aq)
docker run ubuntu sleep 3600
docker run alpine sleep 3600
docker run -name redcon alpine sleep 3600
docker run -name bluecon alpine sleep 3600
docker run -name whiteconalpine sleep 3600
docker run ubuntu
docker run alpine
docker run alpine
touch /tmp/finished