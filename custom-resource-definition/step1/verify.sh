#!/bin/bash

if [[ $(kubectl get crd booksellers.clarusway.com -o jsonpath='{.spec.names.plural}') = 'booksellers' \
&& $(kubectl get crd booksellers.clarusway.com -o jsonpath='{.spec.names.singular}') = 'bookseller' \
&& $(kubectl get crd booksellers.clarusway.com -o jsonpath='{.spec.group}') = 'clarusway.com' ]]
then
  exit 0
else
  exit 1
fi