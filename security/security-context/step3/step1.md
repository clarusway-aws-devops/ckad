- In Namespace prod there is single Pod named webpod. It has been working okay for a while now but DEv team needs it to be more reliable.

- Convert the Pod into a Deployment named `web-deploy` with `3` replicas and delete the single Pod once done.

- In addition, the new Deployment should set `allowPrivilegeEscalation: false` and `privileged: false` for the security context on container level.