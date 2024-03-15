## 03/01/2024
--------------------- 
### docker image creation
-------------------------
![preview](./images/docker25.png)
* Environment variables setup.
   * in home directory `ls -al`
![preview](./images/docker26.png)
* `vi .bashrc` edit the file and define environmental variables.
* after that `source .bashrc`.
* check `env`.
![preview](./images/docker27.png)
![preview](./images/docker28.png)
![preview](./images/docker29.png)
* [refere here](https://docs.docker.com/engine/reference/builder/) official docs of dockerfile
![preview](./images/docker30.png)
* create dokerfile for nginx.
![preview](./images/docker32.png)
![preview](./images/docker31.png)
* to build image
``````
docker iamge build -t nginx:1.0 .
docker image ls
docker image history <dockerimage-id>
docker container run -d - P nginx:1.0
docker container ls

``````
![preview](./images/docker33.png)
![preview](./images/docker34.png)
![preview](./images/docker35.png)
* create new html file
* `vi home.html`
``````
<html>
<h1> welcome to docker image creation </h1>
</html>
``````
![preview](./images/docker36.png)
* `vi Dockerfile`
![preview](./images/docker37.png)
* `docker image build -t nginx:2.0 .`
* `docker container run -d -P nginx:2.0`
  
