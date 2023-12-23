#!/bin/bash

if [[ $(docker volume inspect myvolume -f {{.Name}}) = 'myvolume' ]]
then
  exit 0
else
  exit 1
fi