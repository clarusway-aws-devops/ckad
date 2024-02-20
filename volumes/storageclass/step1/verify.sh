#!/bin/bash

if [[ $(kubectl get sc moon-sc -o jsonpath='{.provisioner}') = 'rancher.io/local-path' \
&& $(kubectl get sc moon-sc -o jsonpath='{.reclaimPolicy}') = 'Delete' \
&& $(kubectl get sc moon-sc -o jsonpath='{.volumeBindingMode}') = 'WaitForFirstConsumer' \
&& $(kubectl get pvc moon-pvc -o jsonpath='{.spec.accessModes}') = '["ReadWriteOnce"]' \
&& $(kubectl get pvc moon-pvc -o jsonpath='{.spec.resources.requests.storage}') = '3Gi' \
&& $(kubectl get pvc moon-pvc -o jsonpath='{.spec.storageClassName}') = 'moon-sc' \
&& $(kubectl get deploy project-moon -o jsonpath='{.spec.template.spec.containers[0].image}') = 'httpd:alpine' \
&& $(kubectl get deploy project-moon -o jsonpath='{.spec.template.spec.containers[0].volumeMounts[0].mountPath}') = '/tmp/data' \
&& $(kubectl get deploy project-moon -o jsonpath='{.spec.template.spec.volumes[0].persistentVolumeClaim.claimName}') = 'moon-pvc' ]]
then
  exit 0
else
  exit 1
fi