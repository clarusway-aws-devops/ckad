#!/bin/bash

if [[ $(docker container inspect firstcon -f {{.Name}}) = '/firstcon' \
&& $(docker container inspect firstcon -f {{.Config.Image}}) = 'ubuntu' ]]
then
  exit 0
else
  exit 1
fi