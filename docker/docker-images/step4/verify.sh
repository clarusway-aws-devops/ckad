#!/bin/bash

if [[ $(docker logs mynewapp) = $(cat /root/myapp/logs) ]]
then
  exit 0
else
  exit 1
fi