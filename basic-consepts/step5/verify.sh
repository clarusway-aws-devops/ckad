#!/bin/bash

if [[ $(kubectl get deploy clarusweb -o jsonpath='{.spec.template.spec.containers[0].image}') = 'clarusway/clarusweb:2.0' ]]
then
  exit 0
else
  exit 1
fi