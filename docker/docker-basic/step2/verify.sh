#!/bin/bash

if [[ $(docker container inspect secondcon -f {{.Name}}) = '/secondcon' \
&& $(docker container inspect secondcon -f {{.Config.Image}}) = 'alpine' ]]
then
  exit 0
else
  exit 1
fi