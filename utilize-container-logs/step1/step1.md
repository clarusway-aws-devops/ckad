- Create a pod named `cw-logging`.
- The Pod should have a container running from the busybox image with the following arguments:
    - /bin/sh
    - -c
    - "mkdir -p /var/log; i=0; while true; do echo \"$i: $(date)\" >> /var/log/first.log; \
      echo \"$(date) INFO $i\" >> /var/log/second.log; i=$((i+1)); sleep 1; done"

- Create and mount a volume under the mount path of `/var/log` of the first container. The volume should be removed as soon as the pod is deleted.
- Create a second container in the pod. It should be launched from the `k8s.gcr.io/fluentd-gcp:1.30` image.
- The container should have an environment variable named `FLUENTD_ARGS` with following values:
    -c /etc/fluentd-config/fluentd.conf
- The second container should also have the same volume as the first container mounted on the path of `/var/log`.
- The second container should also have a fluentd configuration (mentioned in below configmap) available in the following path:
`/etc/fluentd-config/fluentd.conf`.
- Create a ConfigMap object with the name of `fluentd-config` with the following configuration:
```
    <source>
      type tail
      format none
      path /var/log/first.log
      pos_file /var/log/first.log.pos
      tag PHP
    </source>
    
    <source>
      type tail
      format none
      path /var/log/second.log
      pos_file /var/log/second.log.pos
      tag JAVA
    </source>
    
    <match **>
      @type file
      path /var/log/fluent/access
    </match>
```

- Verify if you can see log files with the tag of PHP and JAVA under the following directory
/var/log/fluent/access