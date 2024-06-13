#!/bin/bash

if [[ $(kubectl -n prod get deploy web-deploy -o jsonpath='{.spec.replicas}') -eq 3 \
&& $(kubectl -n prod get deploy web-deploy -o jsonpath='{.spec.template.spec.containers[0].securityContext.allowPrivilegeEscalation}') == 'false' \
&& $(kubectl -n prod get deploy web-deploy -o jsonpath='{.spec.template.spec.containers[0].securityContext.privileged}') == 'false' ]]
then
  exit 0
else
  exit 1
fi