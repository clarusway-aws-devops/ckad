#!/bin/bash

if [[ $(kubectl -n test get po mypod -o jsonpath='{.spec.containers[0].image}') = 'nginx:latest' \
&& $(kubectl -n test get po mypod -o jsonpath='{.spec.containers[0].resources.limits.memory}') = '400Mi' ]]
then
  exit 0
else
  exit 1
fi