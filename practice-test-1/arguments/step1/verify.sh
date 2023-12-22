#!/bin/bash

if [[ $(kubectl get po cw-logging -o jsonpath='{.spec.containers[0].image}') = 'nginx' \
&& $(kubectl get po cw-logging -o jsonpath='{.spec.containers[0].args}') = '["/bin/sh","-c","i=0; while true; do echo \"$i: $(date)\" \u003e\u003e /var/log/first.log; echo \"$(date) INFO $i\" \u003e\u003e /var/log/second.log; i=$((i+1)); sleep 1; done"]' ]]
then
  exit 0
else
  exit 1
fi