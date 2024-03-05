#!/bin/bash

if [[ $(kubectl get po -l env=prod,tier=backend -o=jsonpath='{.items[*].metadata.labels.protected}') = 'true true' ]]
then
  exit 0
else
  exit 1
fi