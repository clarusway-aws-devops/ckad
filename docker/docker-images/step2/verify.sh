#!/bin/bash

if [[ $(docker image inspect localhost:5000/myapp:latest -f '{{json .RepoTags}}' | jq -r '.[]' | cut -d: -f2 | grep v1) = 'v1' \
&& $(docker image inspect localhost:5000/myapp:latest -f '{{json .RepoTags}}' | jq -r '.[]' | cut -d: -f2 | grep latest) = 'latest' \
&& $(ls -l /root/docker-hub/data/docker/registry/v2/repositories/myapp/_manifests/tags | grep -o latest) = 'latest' \
&& $(ls -l /root/docker-hub/data/docker/registry/v2/repositories/myapp/_manifests/tags | grep -o v1) = 'v1' ]]
then
  exit 0
else
  exit 1
fi