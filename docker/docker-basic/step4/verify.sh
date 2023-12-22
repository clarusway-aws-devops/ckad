#!/bin/bash

if [[ $(docker container inspect firstcon -f {{.Name}}) = '/firstcon' \
|| $(docker container inspect secondcon -f {{.Name}}) = '/secondcon' ]]
then
  exit 1
else
  exit 0
fi