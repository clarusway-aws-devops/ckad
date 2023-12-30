#!/bin/bash

if [[ $(kubectl describe  job test-job | grep "Controlled By:") == 'Controlled By:    CronJob/hello-cronjob' ]]
then
  exit 0
else
  exit 1
fi