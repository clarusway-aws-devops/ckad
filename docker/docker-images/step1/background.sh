#!/bin/bash


echo starting... # to test stdout output in /var/log/killercoda

mkdir -p docker-hub/data
chmod 777 -R docker-hub/data
docker-compose -d -f /root/docker-hub/docker-compose.yaml up

touch /tmp/finished