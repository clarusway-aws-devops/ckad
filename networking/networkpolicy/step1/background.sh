#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create -f - <<EOF
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deploy
spec:
  replicas: 3
  selector:
    matchLabels:
      tier: frontend
  template:
    metadata:
      labels:
        tier: frontend
    spec:
      containers:
      - name: nginx
        image: nginx
        ports:
        - containerPort: 80
EOF

kubectl expode deploy nginx-deploy --port=80

touch /tmp/finished
