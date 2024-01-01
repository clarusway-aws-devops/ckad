#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create ns test

kubectl apply -f - << EOF
apiVersion: v1
kind: LimitRange
metadata:
  name: cpu-limit-range
  namespace: test
spec:
  limits:
  - default:  # this section defines default limits
      cpu: "1"
      memory: "500Mi"
    defaultRequest: # this section defines default requests
      cpu: "0.5"
      memory: "300Mi"
    max:    # max and min define the limit range
      cpu: "1.5"
      memory: "800Mi"
    min:
      cpu: "100m"
      memory: "100Mi"
    type: Container
EOF

touch /tmp/finished
