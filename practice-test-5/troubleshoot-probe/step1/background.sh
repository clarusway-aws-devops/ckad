#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create deploy clarus-deploy --image=clarusway/clarusweb --port=80 --replicas=3

kubectl create -f - <<EOF
apiVersion: v1
kind: Pod
metadata:
  labels:
    test: liveness
  name: liveness-http
spec:
  containers:
  - name: liveness
    image: nginx
    livenessProbe:
      httpGet:
        path: /
        port: 8080
      initialDelaySeconds: 3
      periodSeconds: 3
EOF

touch /tmp/finished