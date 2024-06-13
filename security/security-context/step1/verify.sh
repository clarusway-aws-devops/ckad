#!/bin/bash

if [[ $(kubectl get pod myalpine -o jsonpath='{.spec.securityContext.runAsUser}') -eq 1010 \
&& $(kubectl get pod myalpine -o jsonpath='{.spec.securityContext.runAsGroup}') -eq 2000 ]]
then
  exit 0
else
  exit 1
fi