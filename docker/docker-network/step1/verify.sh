#!/bin/bash

if [[ $(docker container inspect sun -f {{.Name}}) = '/sun' \
&& $(docker container inspect sun -f {{.Config.Image}}) = 'nginx' \
&& $(docker container inspect sun -f='{{json .NetworkSettings}}' | jq -r .Networks.bridge.IPAddress) = $(cat /root/sun.txt) ]]
then
  exit 0
else
  exit 1
fi