#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl apply -f /root/clarusweb-v1.yaml

touch /tmp/finished
