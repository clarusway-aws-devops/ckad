- Create a secret named cw-secret. 
- The secret should have content where user=admin and pass=Pp123. 
- Create a pod from the nginx image. 
- Mount the secret as environment variables in the pod. 
- The username should be available as DB_USER and password should be available as DB_PASSWORD inside the pod.