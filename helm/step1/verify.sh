#!/bin/bash

if [[ $(helm get values mysql-release -o json | jq '.auth.rootPassword') = 'mysecretpassword' \
&& $(helm get values mysql-release -o json | jq '.image.tag') = '8.0.26-debian-10-r68' \
&& $(helm get values mysql-release -o json | jq '.mysqlDatabase') = 'mydatabase' \
&& $(helm get values mysql-release -o json | jq '.mysqlPassword') = 'mypassword' \
&& $(helm get values mysql-release -o json | jq '.mysqlUser') = 'myuser' ]]
then
  exit 0
else
  exit 1
fi