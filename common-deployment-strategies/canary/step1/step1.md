- Perform a Canary rollout of an application

- Application "clarusweb" is running in default Namespace.

- You can call the app using curl localhost:30001 .

- The application file is at /root/clarusweb-v1.yaml .

- The app has a Deployment with image clarusway/clarusweb:1.0 , but should be switched over to clarusway/clarusweb:2.0 .

- The switch should not happen automatically, but using the Canary approach:

    - 20% of requests should hit the new image
    - 80% of requests should hit the old image

- For this create a new Deployment `clarusweb-v2` which uses image `clarusway/clarusweb:2.0` . It's Pods should have labels `app: clarusweb` and `version: v2`.

- Once all new Pods are running, update the `selector part` of `clarusweb service` to switch the 20% traffic to `clarusway/clarusweb:2.0` image and 80% traffic to `clarusway/clarusweb:1.0` image.

- The total amount of Pods of both Deployments combined should be 10.

- Don't change the clarusweb-v1 deployment.