#!/bin/bash

if [[ $(docker container inspect secondcon -f {{.Name}}) = $(cat /root/secondcon.txt) \
|| $(docker container ls -a -f "name=secondcon" | awk '{print $1}' | tail -1) = $(cat /root/secondcon.txt) ]]
then
  exit 0
else
  exit 1
fi