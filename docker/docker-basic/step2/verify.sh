#!/bin/bash

docker container ls -af "name=secondcon"

if [[ $? -eq 0 ]]
then
  exit 0
else
  exit 1
fi