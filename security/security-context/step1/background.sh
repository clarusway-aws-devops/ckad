#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl run myalpine --image alpine --command sleep 3600
touch /tmp/finished
