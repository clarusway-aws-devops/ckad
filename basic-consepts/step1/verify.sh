#!/bin/bash

if [[ $(kubectl get po mypod -o jsonpath='{.spec.containers[0].image}') = 'nginx:latest' \
&& $(kubectl get po mypod -o jsonpath='{.metadata.labels}' | grep -o '"tier":"frontend"') = '"tier":"frontend"' ]]
then
  exit 0
else
  exit 1
fi