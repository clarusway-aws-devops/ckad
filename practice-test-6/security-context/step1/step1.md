- Create a POD named cw-security with busybox image. 
- The pod should run a command sleep 3600. 
- The primary process in POD should run with UID of 1000 and GID of 2000 all newly created contents of volume should have the group ID of 3000.