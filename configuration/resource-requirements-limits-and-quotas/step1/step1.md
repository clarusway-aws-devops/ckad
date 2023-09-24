Create a pod with the `nginx:1.25` image named `myapp`. Define `300m` cpu request and `500m` cpu limit.

- Name: myapp
- Image: nginx:1.25
- label: tier=frontend
- cpu-request: 300m
- cpu-limit: 500m