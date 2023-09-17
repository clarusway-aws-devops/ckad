#!/bin/bash

number=$(kubectl get deploy nginx-deploy -o jsonpath='{.spec.replicas}')

if [[ $number -eq 3 ]]
then
  exit 0
else
  exit 1
fi