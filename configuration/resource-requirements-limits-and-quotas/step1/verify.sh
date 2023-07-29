#!/bin/bash

if [[ $(kubectl get po myapp -o jsonpath='{.spec.containers[0].resources.requests.cpu}') = '300m' \
&& $(kubectl get po myapp -o jsonpath='{.spec.containers[0].resources.limits.cpu}') = '500m' ]]
then
  exit 0
else
  exit 1
fi