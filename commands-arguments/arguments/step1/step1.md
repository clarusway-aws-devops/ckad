- Create a pod named `cw-logging`.

- The Pod should have a container running from the `nginx` image with the following arguments:
- /bin/sh
- -c
- "i=0; while true; do echo \"$i: $(date)\" >> /var/log/first.log; echo \"$(date) INFO $i\" >> /var/log/second.log; i=$((i+1)); sleep 1; done"

- Once POD is created, connect to the POD and verify the contents of /var/log/first.log and /var/log/second.log