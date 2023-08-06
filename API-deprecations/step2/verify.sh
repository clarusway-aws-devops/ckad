#!/bin/bash

if [[ $(cat /root/mybook.yaml | grep apiVersion | awk '{printf $2}') = '"clarusway.com/v1"' \
&& $(kubectl get bs mybook | grep 'mybook' | awk '{printf $1}') = 'mybook' ]]
then
  exit 0
else
  exit 1
fi