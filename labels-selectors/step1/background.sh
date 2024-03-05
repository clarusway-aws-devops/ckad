#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl run pod1 --image=nginx -l env=dev,team=alfa,tier=frontend
kubectl run pod2 --image=nginx -l env=dev,team=alfa,tier=backend
kubectl run pod3 --image=nginx -l env=qa,team=alfa,tier=frontend
kubectl run pod4 --image=nginx -l env=qa,team=alfa,tier=backend
kubectl run pod5 --image=nginx -l env=prod,team=alfa,tier=frontend
kubectl run pod6 --image=nginx -l env=prod,team=alfa,tier=backend
kubectl run pod7 --image=nginx -l env=dev,team=beta,tier=frontend
kubectl run pod8 --image=nginx -l env=dev,team=beta,tier=backend
kubectl run pod9 --image=nginx -l env=qa,team=beta,tier=frontend
kubectl run pod10 --image=nginx -l env=qa,team=beta,tier=backend
kubectl run pod11 --image=nginx -l env=prod,team=beta,tier=frontend
kubectl run pod12 --image=nginx -l env=prod,team=beta,tier=backend

touch /tmp/finished
