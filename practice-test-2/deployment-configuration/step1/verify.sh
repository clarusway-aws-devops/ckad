#!/bin/bash

if [[ $(kubectl get deploy cw-configuration -o jsonpath='{.spec.template.spec.containers[0].image}') = 'nginx' \
&& $(kubectl get deploy cw-configuration -o jsonpath='{.spec.replicas}') = '3' \
&& $(kubectl get deploy cw-configuration -o jsonpath='{.spec.strategy.rollingUpdate.maxSurge}') = '30%' \
&& $(kubectl get deploy cw-configuration -o jsonpath='{.spec.strategy.rollingUpdate.maxUnavailable}') = '0%' ]]
then
  exit 0
else
  exit 1
fi