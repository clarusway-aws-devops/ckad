#!/bin/bash

if [[ $(kubectl get BookSeller mybook -o jsonpath='{.spec.book}') = 'Heidi' \
&& $(kubectl get BookSeller mybook -o jsonpath='{.spec.count}') -eq 3 ]]
then
  exit 0
else
  exit 1
fi