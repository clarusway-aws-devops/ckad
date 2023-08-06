#!/bin/bash

if [[ $(cat /etc/kubernetes/manifests/kube-apiserver.yaml | grep "disable-admission-plugins" | grep -io NamespaceLifecycle) = 'NamespaceLifecycle' ]]
then
  exit 0
else
  exit 1
fi