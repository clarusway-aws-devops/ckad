#!/bin/bash

if [[ $(docker logs mycontainer) = $(cat /root/myapp/logs) ]]
then
  exit 0
else
  exit 1
fi