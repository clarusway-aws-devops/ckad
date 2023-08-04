- Perform a Green-Blue rollout of an application

- Application "clarusweb" is running in default Namespace.

- You can call the app using curl localhost:30001 .

- The application YAML is available at /root/clarusweb-v1.yaml .

- The app has a Deployment with image clarusway/clarusweb:1.0 , but should be switched over to clarusway/clarusweb:2.0 .

- The switch should happen instantly. Meaning that from the moment of rollout, all new requests should hit the new image.

- Create a new Deployment clarusveb-v2 which uses image clarusway/clarusweb:2.0 with 4 replicas. It's Pods should have labels app: clarusweb and version: v2

- Once all new Pods are running, change the selector label of Service clarusweb to version: v2

- Finally scale down Deployment clarusweb-v1 to 0 replicas.