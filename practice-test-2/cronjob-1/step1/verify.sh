#!/bin/bash

if [[ $(kubectl get cj cw-job -o jsonpath='{.spec.jobTemplate.spec.template.spec.containers[0].command}') = '["/bin/sh","-c","date"]' \
&& $(kubectl get cj cw-job -o jsonpath='{.spec.jobTemplate.spec.template.spec.containers[0].image}') = 'busybox:1.28' \
&& $(kubectl get cj cw-job -o jsonpath='{.spec.schedule}') = '* * * * *' ]]
then
  exit 0
else
  exit 1
fi