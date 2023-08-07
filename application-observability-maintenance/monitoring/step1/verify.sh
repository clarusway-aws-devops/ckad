#!/bin/bash

if [[ $(cat /opt/pod.txt) = 'second-pod' ]]
then
  exit 0
else
  exit 1
fi