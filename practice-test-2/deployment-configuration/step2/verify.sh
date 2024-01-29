#!/bin/bash

if [[ $(kubectl get deploy cw-configuration -o jsonpath='{.spec.template.spec.containers[0].image}') = 'nginx:alpine' ]]
then
  exit 0
else
  exit 1
fi