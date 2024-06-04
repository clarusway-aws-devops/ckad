#!/bin/bash

if [[ $(kubectl get deploy -n webserver mydeploy -o jsonpath='{.spec.template.spec.containers[0].image}') = 'httpd:alpine' \
&& $(kubectl -n webserver get deploy mydeploy -o jsonpath='{.metadata.labels}'  | grep -o '"web":"apache"') = '"web":"apache"' ]]
then
  exit 0
else
  exit 1
fi