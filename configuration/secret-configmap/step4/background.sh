#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create cm hello-cm --from-literal=index.html=hello

touch /tmp/finished
