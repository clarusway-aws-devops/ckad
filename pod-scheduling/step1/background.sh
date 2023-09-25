#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl taint nodes controlplane node-role.kubernetes.io/control-plane:NoSchedule-

kubectl label nodes controlplane disktype=ssd

touch /tmp/finished
