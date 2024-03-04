#!/bin/bash

if [[ $(kubectl -n sun get secret sun-sa-secret -o=jsonpath='{.data.token}' | base64 -d) = $(cat /opt/sun/token) ]]
then
  exit 0
else
  exit 1
fi