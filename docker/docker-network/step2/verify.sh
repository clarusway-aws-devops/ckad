#!/bin/bash

if [[ $(docker network inspect mynet -f {{.Name}}) = 'mynet' ]]
then
  exit 0
else
  exit 1
fi