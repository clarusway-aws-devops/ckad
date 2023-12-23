#!/bin/bash

if [[ $(docker container inspect beta-con -f {{.Name}}) = '/beta-con' \
&& $(docker container inspect beta-con -f {{.Config.Image}}) = 'ubuntu' \
&& $(docker container inspect beta-con --format='{{.HostConfig.Binds}}') = '[myvolume:/beta:ro]' ]]
then
  exit 0
else
  exit 1
fi