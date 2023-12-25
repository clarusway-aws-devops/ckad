#!/bin/bash


echo starting... # to test stdout output in /var/log/killercoda

echo "127.0.0.1 privaterepo" >> /etc/hosts
mkdir -p docker-hub/data
chmod 777 -R docker-hub/data
docker-compose -f /root/docker-hub/docker-compose.yaml up -d

touch /tmp/finished