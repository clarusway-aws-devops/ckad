#!/bin/bash

if [[ $(kkubectl -n dev get resourcequotas dev-quota -o jsonpath='{.spec.hard}') = '{"limits.cpu":"2","limits.memory":"2Gi","requests.cpu":"1","requests.memory":"1Gi"}' ]]
then
  exit 0
else
  exit 1
fi