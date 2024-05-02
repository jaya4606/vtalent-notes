![preview](./images/jin21.png)

* [Refer Here](https://github.com/VictoriaMetrics/VictoriaMetrics/tree/master/deployment/docker) check this repo.
* new Feature in jenkins latest version.(disk space management).
![preview](./images/jin22png)
* it monitering the `tmp` directory.
![preview](./images/jin23.png)
* [Refer Here](https://www.jenkins.io/changelog-stable/) change logs of jenkins.

# 3 tier Architecture
---------------------------------------------
![preview](./images/jin24.png)
* Each `microservice` will have their own repository.
* create a private repository for java `springboot`.
  ![preview](./images/jin25.png)
  ![preview](./images/jin26.png)
  ![preview](./images/jin27.png)
  ![preview](./images/jin28.png)

* [Refer Here](https://medium.com/@vijulpatel865/building-docker-image-using-jenkins-pipeline-push-it-to-aws-ecr-aa02cc7a295e) for docker image creation and push to `ecr`.
* we have to jenkinspipelines for craeting 3 different `docker images`.
  1. java app
  2. nodejs
  3. db
* to work with `ecr` we need to configure aws cli.
* jenkins file for java springboot.
```Jenkinsfile

```
* we have to create `ecr` private to push the image to ecr.
### ECR creation
----------------------------------------
![preview](./images/jin29.png)
![preview](./images/jin30.png)
![preview](./images/jin31.png)
![preview](./images/jin32.png)
* try to run pipeline it is failed. because there is no docker in this jenkins server.
  ![preview](./images/jin33.png)
* install docker in it.[Refer Here](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/install-docker.html) for docker installtion for amazon linux.
*  create a react js build repo in `ecr`.
  ![preview](./images/jin34.png)
  ![preview](./images/jin35.png)
* scanning the image.
  ![preview](./images/jin36.png)
