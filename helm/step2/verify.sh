#!/bin/bash

if [[ $(helm -n beta ls | grep -o "beta-redis") != 'beta-redis' \
&& $(helm status beta-nginx -n beta --output json | jq -r '.info.notes' | grep -oP 'CHART VERSION: \K[^ ]+') = '15.12.2' \
&& $(kubectl get deploy beta-apache -n beta -o=jsonpath='{.spec.template.spec.containers[0].imagePullPolicy}') = 'Always' \
&& $(kubectl get deploy beta-apache -n beta -o=jsonpath='{.spec.replicas}') = '3' ]]
then
  exit 0
else
  exit 1
fi