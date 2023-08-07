#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

touch /opt/pod.txt

kubectl apply -f -<<EOF
apiVersion: v1
kind: Pod
metadata:
  name: first-pod
spec:
  containers:
  - name: memory-limit
    image: polinux/stress
    command: ["stress"]
    args: ["--vm", "1", "--vm-bytes", "150M", "--vm-hang", "1"]
EOF

kubectl apply -f -<<EOF
apiVersion: v1
kind: Pod
metadata:
  name: second-pod
spec:
  containers:
  - name: memory-limit
    image: polinux/stress
    command: ["stress"]
    args: ["--vm", "1", "--vm-bytes", "350M", "--vm-hang", "1"]
EOF

kubectl apply -f -<<EOF
apiVersion: v1
kind: Pod
metadata:
  name: third-pod
spec:
  containers:
  - name: memory-limit
    image: polinux/stress
    command: ["stress"]
    args: ["--vm", "1", "--vm-bytes", "250M", "--vm-hang", "1"]
EOF

touch /tmp/finished
