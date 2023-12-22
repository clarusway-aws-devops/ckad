#!/bin/bash

if [[ $(docker container ls | awk 'NR>1' | wc -l) = $(cat /root/number.txt) ]]
then
  exit 0
else
  exit 1
fi