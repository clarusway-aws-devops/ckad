#!/bin/bash

if [[ $(kubectl get netpol nginx-netpol -o jsonpath='{.spec.podSelector.matchLabels}' | grep -o '"tier":"frontend"') == '"tier":"frontend"' && \
$(kubectl get netpol nginx-netpol -o jsonpath='{.spec.ingress[0].from[*].podSelector.matchLabels}' | grep -o '"role":"frontend"') == '"role":"frontend"' && \
$(kubectl get netpol nginx-netpol -o jsonpath='{.spec.ingress[0].ports[0].port}') == '80' && \
$(kubectl get netpol nginx-netpol -o jsonpath='{.spec.egress[0].ports[*].port}') == '53 53' ]]

then
  exit 0
else
  exit 1
fi