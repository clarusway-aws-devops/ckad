#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create deploy clarus-deploy --image=clarusway/clarusweb --port=80 --replicas=3

kubectl create -f - <<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: clarus
---
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    run: fix-deployment
  name: fix-deployment
  namespace: clarus
spec:
  replicas: 3
  selector:
    matchLabels:
      run: fix-deployment
  template:
    metadata:
      labels:
        run: fix-deployment
    spec:
      containers:
      - image: ngix
        name: fix-deployment
EOF

touch /tmp/finished