#!/bin/bash

if [[ $(kubectl describe po mypod | grep 'Node:' | grep -o controlplane) = 'controlplane' ]]
then
  exit 0
else
  exit 1
fi