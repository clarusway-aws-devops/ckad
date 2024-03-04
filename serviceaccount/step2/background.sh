#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create ns sun
mkdir /opt/sun
kubectl -n sun create serviceaccount sun-sa
kubectl apply -f - <<EOF
apiVersion: v1
kind: Secret
metadata:
  name: sun-sa-secret
  namespace: sun
  annotations:
    kubernetes.io/service-account.name: sun-sa
type: kubernetes.io/service-account-token
EOF

touch /tmp/finished
