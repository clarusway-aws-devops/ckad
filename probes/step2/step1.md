-Create an nginx pod named `readiness-pod` (that includes port 80) with an HTTP readinessProbe on path `/` on port `80`. 
- The readiness probe starts kicking in after `5` seconds whereas the interval between probes would be `5` seconds.