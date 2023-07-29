Create a pod with the `nginx:latest` image named 'mypod'. Define '300m' cpu request and '500m' cpu limit.

- Name: mypod
- Image: nginx:latest
- label: tier=frontend
- cpu-request: 300m
- cpu-limit: 500m