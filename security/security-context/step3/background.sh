#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create ns prod

kubectl apply -f - <<EOF
apiVersion: v1
kind: Pod
metadata:
  name: webpod
  labels:
    project: web
  namespace: prod
spec:
  containers:
  - name: nginx
    image: nginx:1.27.0
    ports:
    - containerPort: 80
EOF

touch /tmp/finished
