#!/bin/bash

if [[ $(kubectl get po cw-cmdargs -o jsonpath='{.spec.containers[0].image}') = 'busybox' \
&& $(kubectl get po cw-cmdargs -o jsonpath='{.spec.containers[0].name}') = 'cmdcontainer' \
&& $(kubectl get po cw-cmdargs -o jsonpath='{.spec.containers[0].command}') = '["sleep"]' \
&& $(kubectl get po cw-cmdargs -o jsonpath='{.spec.containers[0].args}') = '["3600"]' ]]
then
  exit 0
else
  exit 1
fi