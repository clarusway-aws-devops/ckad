#!/bin/bash

if [[ $(docker container inspect firstcon -f {{.Name}}) = '/secondcon' \
&& $(docker container inspect firstcon -f {{.Config.Image}}) = 'alpine' ]]
then
  exit 0
else
  exit 1
fi