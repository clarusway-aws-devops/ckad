#!/bin/bash

if [[ $(kubectl get deploy clarusweb-v2 -o jsonpath='{.spec.template.spec.containers[0].image}') = 'clarusway/clarusweb:2.0' \
&& $(kubectl get deploy clarusweb-v2 -o jsonpath='{.spec.replicas}') -eq 2 \
&& $(kubectl get deploy clarusweb-v2 -o jsonpath='{.spec.template.metadata.labels.app}') = 'clarusweb' \
&& $(kubectl get deploy clarusweb-v2 -o jsonpath='{.spec.template.metadata.labels.version}') = 'v2' \
&& $(kubectl get service clarusweb -o jsonpath='{.spec.selector}) = '{"app":"clarusweb"}' ]]
then
  exit 0
else
  exit 1
fi