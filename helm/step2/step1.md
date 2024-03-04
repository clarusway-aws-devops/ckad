- Team beta asked you to perform some operations using Helm, all in Namespace `beta`:

- Delete release beta-redis.

- Upgrade release beta-nginx to `15.12.2`  version of chart bitnami/nginx available.

- Install a new release `beta-apache` of chart `bitnami/apache`. The Deployment should have `three replicas` and `image.pullPolicy Always`, set these via Helm-values during install.