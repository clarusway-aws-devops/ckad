#!/bin/bash

if [[ $(kubectl get po cw-ports -o jsonpath='{.spec.containers[0].image}') = 'nginx:latest' \
&& $(kubectl get po cw-ports -o jsonpath='{.spec.containers[0].name}') = 'nginx' \
&& $(kubectl get po cw-ports -o jsonpath='{.spec.containers[0].ports[0].containerPort}') = 80 ]]
then
  exit 0
else
  exit 1
fi