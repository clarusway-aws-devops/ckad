#!/bin/bash

if [[ $(kubectl get po stress-pod -o jsonpath='{.spec.containers[0].resources.limits.memory}') = '70Mi' \
&& $(kubectl get po stress-pod -o jsonpath='{.status.phase}') = 'Running' ]]
then
  exit 0
else
  exit 1
fi