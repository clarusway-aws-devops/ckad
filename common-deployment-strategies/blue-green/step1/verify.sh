#!/bin/bash

if [[ $(kubectl get deploy clarusweb-v2 -o jsonpath='{.spec.template.spec.containers[0].image}') = 'clarusway/clarusweb:2.0' \
&& $(kubectl get deploy clarusweb-v2 -o jsonpath='{.spec.replicas}') -eq 3 \
&& $(kubectl get deploy clarusweb-v2 -o jsonpath='{.spec.template.metadata.labels.app}') = 'clarusweb' \
&& $(kubectl get deploy clarusweb-v2 -o jsonpath='{.spec.template.metadata.labels.version}') = 'v2' \
&& $(curl -s localhost:30001/ | grep -o  'Version 2') = 'Version 2' ]]
then
  exit 0
else
  exit 1
fi