- There are cw-app deploymnet and cw-service service objects.
- Verify if you are able to access the cw-service from a pod like busybox. If it’s not working, fix the issue so that the website is downloadable when the following command is run: 

```bash
wget cw-service:8080
```