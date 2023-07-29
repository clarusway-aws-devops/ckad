#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl apply -f - << EOF
apiVersion: v1
kind: Pod
metadata:
  labels:
    run: stress-app
  name: stress-pod
spec:
  containers:
  - image: polinux/stress
    name: stress-app
    args:
    - --vm
    - "1"
    - --vm-bytes
    - 50M
    - --vm-hang
    - "1"
    command:
    - stress
    resources:
      requests:
        cpu: "50m"
        memory: "10Mi" 
      limits:
        cpu: "100m"
        memory: "30Mi" 
EOF

touch /tmp/finished
