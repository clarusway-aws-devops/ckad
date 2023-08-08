#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl label nodes node01 disktype=ssd

touch /tmp/finished
