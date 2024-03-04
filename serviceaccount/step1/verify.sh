#!/bin/bash

if [[ $(kubectl get secret venus-sa-secret -o=jsonpath='{.metadata.annotations.kubernetes\.io\/service-account\.name}') = 'venus-sa' ]]
then
  exit 0
else
  exit 1
fi