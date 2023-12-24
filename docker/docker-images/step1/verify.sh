#!/bin/bash

if [[ $(docker image inspect myapp:latest -f {{.RepoTags}}) = '[myapp:latest myapp:v1]' \
&& $(docker image inspect myapp:latest -f '{{json .Config}}' | jq -r '.Env[]' | grep '^APP_NAME=' | cut -d '=' -f 2) = 'mynewapp' ]]
then
  exit 0
else
  exit 1
fi