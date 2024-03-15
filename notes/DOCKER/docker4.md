## 02/01/2024
------------------------
* [refere here](https://labs.play-with-docker.com/) for docker playground.
### Port Forwarding
-------------------
![preview](./images/docker15.png)
* docker commands used today
``````
docker container logs <containerid>
docker container inspect <conatinerid>
docker container exec -it <container-id> /bin/bash
docker container run -d --name mynginx -P --memory-reservation 10M --memory 50M nginx
docker stats
``````
![preview](./images/docker16.png)
![preview](./images/docker17.png)
* to entering into container
![preview](./images/docker18.png)
* infinity loop
```
`while true;do curl <ip-addr>:port ;done`
```
![preview](./images/docker19.png)
![preview](./images/docker20.png)
* container restart policies
![preview](./images/docker23.png)
![preview](./images/docker21.png)
![preview](./images/docker22.png)
![preview](./images/docker24.png)
