#!/bin/bash

if [[ $(docker container inspect mars -f {{.Name}}) = '/mars' \
&& $(docker container inspect mars -f {{.Config.Image}}) = 'nginx' \
&& $(docker container inspect mars --format='{{.HostConfig.Binds}}') = '[myvolume:/beta:ro]' ]]
then
  exit 0
else
  exit 1
fi