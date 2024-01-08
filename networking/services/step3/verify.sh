#!/bin/bash

if [[ $(kubectl get ep clarus-svc  | grep clarus-svc | awk '{print $2}') != '<none>' \
&& $(kubectl get svc clarus-svc -o jsonpath='{.spec.ports[0].targetPort}') = '80' ]]
then
  exit 0
else
  exit 1
fi