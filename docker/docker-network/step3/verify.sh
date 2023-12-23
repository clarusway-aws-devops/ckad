#!/bin/bash
docker start alpha-con

if [[ $(docker container inspect moon -f {{.Name}}) = '/moon' \
&& $(docker container inspect moon -f {{.Config.Image}}) = 'httpd' \
&& $(docker container inspect mars --format='{{json .NetworkSettings}}' | jq -r '.Ports."80/tcp"[0].HostPort') = '9090' ]]
then
  exit 0
else
  exit 1
fi