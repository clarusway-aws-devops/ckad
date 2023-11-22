#!/bin/bash

if [[ $(kubectl get po cw-nginx -o jsonpath='{.spec.containers[0].image}') = 'nginx:latest' \
&& $(kubectl get po cw-nginx -o jsonpath='{.spec.containers[0].name}') = 'mycontainer' ]]
then
  exit 0
else
  exit 1
fi