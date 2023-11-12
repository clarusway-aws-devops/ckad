#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create deploy clarus-deploy --image=clarusway/clarusweb --port=80 --replicas=3

kubectl create -f - <<EOF
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    run: cw-service
  name: cw-app
spec:
  replicas: 2
  selector:
    matchLabels:
      run: cw-app
  template:
    metadata:
      labels:
        run: cw-app
    spec:
      containers:
      - image: nginx
        name: cw-service
---
apiVersion: v1
kind: Service
metadata:
  name: cw-service
  labels:
    run: cw-service
spec:
  ports:
  - port: 8080
    targetPort: 8080
    protocol: TCP
  selector:
    run: cw-app
EOF

touch /tmp/finished