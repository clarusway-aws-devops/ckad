#!/bin/bash

if [[ $(docker image inspect localhost/myapp:v1 -f '{{json .RepoTags}}' | jq -r '.[]' | cut -d: -f2 | grep v1 | head -1) = 'v1' \
&& $(docker image inspect localhost/myapp:latest -f '{{json .RepoTags}}' | jq -r '.[]' | cut -d: -f2 | grep latest | head -1) = 'latest' \
&& $(ls -l /root/docker-hub/data/docker/registry/v2/repositories/myapp/_manifests/tags | grep -o latest) = 'latest' \
&& $(ls -l /root/docker-hub/data/docker/registry/v2/repositories/myapp/_manifests/tags | grep -o v1) = 'v1' ]]
then
  exit 0
else
  exit 1
fi