#!/bin/bash

if [[ $(docker container inspect alpha-con -f {{.Name}}) = '/alpha-con' \
&& $(docker container inspect alpha-con -f {{.Config.Image}}) = 'alpine' \
&& docker start alpha-con && $(docker exec alpha-con cat /alpha/myapp) = 'hello world' ]]
then
  exit 0
else
  exit 1
fi