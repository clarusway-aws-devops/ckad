#!/bin/bash

if [[ $(docker container inspect mycontainer -f {{.Name}}) = '/mycontainer' \
&& $(docker container inspect mycontainer -f {{.Config.Image}}) = 'localhost:5000/myapp:v1' \
&& $(docker container inspect mycontainer -f '{{json .Config.Env}}' | jq -r '.[] | select(startswith("APP_NAME=")) | split("=")[1]') = 'myperfectapp' ]]
then
  exit 0
else
  exit 1
fi