#!/bin/bash

if [[ $(docker image inspect localhost:5000/myapp:latest -f {{.RepoTags}}) = '[myapp:latest myapp:v1 localhost:5000/myapp:latest localhost:5000/myapp:v1]' \
&& $(ls /root/docker-hub/data/docker/registry/v2/repositories/myapp/_manifests/tags) = 'ls /root/docker-hub/data/docker/registry/v2/repositories/myapp/_manifests/tags' ]]
then
  exit 0
else
  exit 1
fi