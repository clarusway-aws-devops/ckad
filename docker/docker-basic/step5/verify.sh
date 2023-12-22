#!/bin/bash

if [[ $(docker container inspect redcon -f {{.Config.Image}}) = 'alpine' ]]
then
  exit 0
else
  exit 1
fi