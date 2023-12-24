#!/bin/bash
docker start alpha-con

if [[ $(docker container inspect moon -f {{.Name}}) = '/moon' \
&& $(docker container inspect moon -f {{.Config.Image}}) = 'httpd' \
&& $(docker network inspect mynet -f='{{json .Containers}}' | jq -r .[].Name | grep moon) = 'moon' ]]
then
  exit 0
else
  exit 1
fi