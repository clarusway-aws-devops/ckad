- There is a deployment named `nginx-deploy`.
- Create a NetworkPolicy named `nginx-netpol` so that only pods with labels `role: frontend` can access the pods of nginx-deployment from `80` port.
- The NetworkPolicy should still allow outgoing DNS traffic on port 53 TCP and UDP.