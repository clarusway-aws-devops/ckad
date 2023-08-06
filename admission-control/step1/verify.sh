#!/bin/bash

if [[ $(cat /etc/kubernetes/manifests/kube-apiserver.yaml | grep "enable-admission-plugins" | grep -oi namespaceautoprovision) = 'NamespaceAutoProvision' ]]
then
  exit 0
else
  exit 1
fi