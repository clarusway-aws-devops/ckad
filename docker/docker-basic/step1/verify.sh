#!/bin/bash

docker container ls -af "name=firstcon"

if [[ $? -eq 0 ]]
then
  exit 0
else
  exit 1
fi