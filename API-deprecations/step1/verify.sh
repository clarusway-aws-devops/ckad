  #!/bin/bash

  if [[ $(cat /root/api-group) = 'networking.k8s.io' ]]
  then
    exit 0
  else
    exit 1
  fi