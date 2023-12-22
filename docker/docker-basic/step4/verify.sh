#!/bin/bash

if [[ $(docker container inspect firstcon -f {{.Name}}) = '/firstcon' \
|| $(docker container inspect secondcon -f {{.Name}}) = '/secondcon' ]]
then
  exit 0
else
  exit 1
fi