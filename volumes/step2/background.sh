#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create -f - <<EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: mypv-claim
spec:
  storageClassName: manual
  accessModes:
    - ReadWriteMany
  resources:
    requests:
      storage: 6Gi
EOF

touch /tmp/finished
