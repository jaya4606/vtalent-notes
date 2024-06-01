* create a EKS cluster in jenkins pipeline.
  ![preview](./images/jin110.png)
  ![preview](./images/jin111.png)
  ![preview](./images/jin112.png)
* till now we already push the java image and nodejs image to ECR.
* we get the mariadb from official dockerhub.download(pull) the image and push this to ECR.
* write a pipeline for mariadb image to download from dockerhub and push it to ECR.
* create a new ECR repository.
![preview](./images/jin113.png)
![preview](./images/jin114.png)
![preview](./images/jin115.png)
* jenkins server consumes disk space because of the docker images so we have clean the images after docker push completed.
  ![preview](./images/jin116.png)
  ![preview](./images/jin117.png)
  ![preview](./images/jin118.png)
  ![preview](./images/jin119.png)
* now we have 3 images of java,nodejs and mariadb.
 ![preview](./images/jin120.png)
 * [Refer Here](https://hub.docker.com/_/mariadb) for the docker image.
  
## Springboot Application

![preview](./images/jin121.png)
* in the react js front end code we define the backend  java url.
  ![preview](./images/jin122.png)
* in the backend java code we define base url of the front end.
  ![preview](./images/jin123.png)
* mariadb url get from java code.
  ![preview](./images/jin124.png)
  ![preview](./images/jin125.png)
  ![preview](./images/jin126.png)
* lets create the eks cluster.
![preview](./images/jin127.png)
* now we have to connect EKS cluster in bastion server not in jenkins server.by
```
aws eks update-kubeconfig --region us-west-2 --name <clustername>
```
![preview](./images/jin128.png)
![preview](./images/jin129.png)
* what role was allocated to jenkins server same role will be allocated to bastion machine.
  ![preview](./images/jin130.png)
  ![preview](./images/jin131.png)
  ![preview](./images/jin132.png)
  ![preview](./images/jin133.png)
  ![preview](./images/jin134.png)
* after creating the cluster we need to deploy least depency of the application so we can deploy mariadb by using helm charts.
* [Refer Here](https://github.com/bitnami/charts/blob/main/bitnami/mariadb/README.md) for maraidb helmchart.
* bitnami was the vmware company.
![preview](./images/jin135.png)

* create a one repo for the mariadb.move the maraidb to separate folder and make it as git repo.commit all the files in mariadb.
![preview](./images/jin136.png)
* create a new private repository in github.
  ![preview](./images/jin137.png)
* check the values.yaml by
```
less values.yaml
```
![preview](./images/jin138.png)

* create a new file with modified values.
  ![preview](./images/jin139.png)
  ![preview](./images/jin140.png)
* commit the changes and push to repo.
* now create a pipeline to deploy the helm charts.
## jenkins integration with kubectl and helm

* install kubectl [Refer Here](https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html) and install helm [Refer Here](https://docs.aws.amazon.com/eks/latest/userguide/helm.html) in jenkins server with jenkins user.
![preview](./images/jin141.png)
![preview](./images/jin142.png)
* we dont have a `.kube` folder in jenkins server.
  ![preview](./images/jin143.png)
* now install helm.
  ![preview](./images/jin144.png)
* write a new jenkinsfile to run the mariadb with helm.
  ![preview](./images/jin145.png)
  ![preview](./images/jin146.png)
  ![preview](./images/jin147.png)
  ![preview](./images/jin148.png)
* create namespace by command.
