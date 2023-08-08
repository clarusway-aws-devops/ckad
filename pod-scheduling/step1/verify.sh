#!/bin/bash

if [[ $(kubectl describe po mypod | grep 'Node:' | grep -o node01) = 'node01' ]]
then
  exit 0
else
  exit 1
fi