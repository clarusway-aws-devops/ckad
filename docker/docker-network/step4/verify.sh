#!/bin/bash

if [[ $(docker container inspect mars -f {{.Name}}) = '/mars' \
&& $(docker container inspect mars -f {{.Config.Image}}) = 'nginx' \
&& $(docker container inspect mars --format='{{json .NetworkSettings}}' | jq -r '.Ports."80/tcp"[0].HostPort') = '9090' ]]
then
  exit 0
else
  exit 1
fi