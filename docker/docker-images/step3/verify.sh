#!/bin/bash

if [[ $(docker container inspect mynewapp -f {{.Name}}) = '/mynewapp' \
&& $(docker container inspect mynewapp -f {{.Config.Image}}) = 'localhost:5000/myapp:v1' ]]
then
  exit 0
else
  exit 1
fi