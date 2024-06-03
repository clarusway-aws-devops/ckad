#!/bin/bash

if [[ $( kubectl get job hello-job -o jsonpath='{.spec.completions}') -eq 6 \
&& $(kubectl get job hello-job -o jsonpath='{.spec.parallelism}') -eq 2 \
&& $(kubectl get jobs | grep hello-job | awk '{print $3}') == '6/6' ]]
then
  exit 0
else
  exit 1
fi