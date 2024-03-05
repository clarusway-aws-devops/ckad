#!/bin/bash

if [[ $(kubectl get po -l 'env in (qa, prod)' -o=jsonpath='{.items[*].metadata.annotations.warning}') = 'do not delete this pod do not delete this pod do not delete this pod do not delete this pod do not delete this pod do not delete this pod do not delete this pod do not delete this pod' ]]
then
  exit 0
else
  exit 1
fi