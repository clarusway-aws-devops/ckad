#!/bin/bash
docker start alpha-con

if [[ $(docker container inspect alpha-con -f {{.Name}}) = '/alpha-con' \
&& $(docker container inspect alpha-con -f {{.Config.Image}}) = 'nginx' \
&& $(docker cp alpha-con:/alpha /tmp > /dev/null && cat /tmp/alpha/myapp) = 'hello world' ]]
then
  exit 0
else
  exit 1
fi