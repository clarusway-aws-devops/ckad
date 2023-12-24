#!/bin/bash

if [[ $(docker container inspect mynewapp -f {{.Name}}) = '/mynewapp' ]]
then
  exit 0
else
  exit 1
fi