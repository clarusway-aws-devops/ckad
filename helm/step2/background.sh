#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create ns beta
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install beta-redis bitnami/redis -n beta
helm -n beta install beta-nginx bitnami/nginx --version 15.11.0

touch /tmp/finished
