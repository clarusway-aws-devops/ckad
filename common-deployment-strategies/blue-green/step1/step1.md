- Perform a Green-Blue rollout of an application

- Application "clarusweb" is running in default Namespace.

- You can call the app using curl localhost:30001 .

- The application file is at /root/clarusweb-v1.yaml .

- The app has a Deployment with image clarusway/clarusweb:1.0 , but should be switched over to clarusway/clarusweb:2.0 .

- The switch should happen instantly. Meaning that from the moment of rollout, all new requests should hit the new image.

- Create a new Deployment `clarusweb-v2` which uses image `clarusway/clarusweb:2.0` with `3` replicas. It's Pods should have labels `app: clarusweb` and `version: v2`.

- Once all new Pods are running, update the `selector part` of `clarusweb service` to switch the traffic to `clarusway/clarusweb:2.0` image.