* create helm chart for java application.
![preview](./images/jin150.png)
* Till now we are using public docker images(public registry) in k8s manifest.now we use our custom docker images(private registry[ECR]) in k8s manifests.
* so we need to create a secret.
* [Refer Here](https://skryvets.com/blog/2021/03/15/kubernetes-pull-image-from-private-ecr-registry/) for docs.
* [Refer Here](https://gist.github.com/t2wu/ce286e0883fe10cd54b664be17bf63fe) for another link.
```yaml
kubectl create secret docker-registry regcred \
  --docker-server=<aws-account-id>.dkr.ecr.<aws-region>.amazonaws.com \
  --docker-username=AWS \
  --docker-password=$(aws ecr get-login-password) \
  -o yaml
```
![preview](./images/jin151.png)
![preview](./images/jin152.png)
* this `.dockerconfigjson` contains ECR credintials.
* in the k8s manifest file we have a parameter `imagepullsecrets` we use this secret in that parameter.
![preview](./images/jin153.png)
* Pull an Image from a Private Registry [Refer Here](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/) for official docs.
* we are created separate namespaces for java,reactjs,database.but the secrets are available for all the namespaces.
* now goto java helm chart `chart.yaml` remove the app version. 
  ![preview](./images/jin154.png)
  ![preview](./images/jin155.png)
  ![preview](./images/jin156.png)
* give the values in values.yaml file.
  ![preview](./images/jin157.png)
  ![preview](./images/jin158.png)
  ![preview](./images/jin159.png)
  ![preview](./images/jin160.png)
* push all changes to github.
  ![preview](./images/jin162.png)
* in the java application default username and password are root,root.but in helm chart we can give username root and password root123 a different passwords.
  ![preview](./images/jin161.png)
  ![preview](./images/jin163.png)
* create a new namespace for java app `ns.yaml`.
  ![preview](./images/jin164.png)
* specify the namespace in `deployment.yaml`.
  ![preview](./images/jin165.png)
* hpa
  ![preview](./images/jin166.png)
* ingress
  ![preview](./images/jin167.png)
* change this in service.yaml,service account.yaml also.
* give the value of namespace in `values.yaml`
  ![preview](./images/jin168.png)
  ![preview](./images/jin169.png)
* it getting failed.
  ![preview](./images/jin170.png)  
* to check the failure by `kubectl describe po <pod-name> -n <namespace>`.
  ![preview](./images/jin171.png)
* liveness and readiness probes are failed.
* we keep the default valuses in probes http,http is default 80 port.
* define a liveness probe as a tcp socket.[Refer Here](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/).
  ![preview](./images/jin172.png)
  ![preview](./images/jin173.png)
  ![preview](./images/jin174.png)
  ![preview](./images/jin175.png)
* it is failing beacuse it is unable to connect the database.
### we have two approaches to connect or change credintials in database.
 1. we can update new username password in application.properties file again do docker build and create new docker image.
 2. we can `application.properties` as configmap.create a separate configmap and add to pod or container as a volume.
* copy the all data present in `application.properties` and create a new file in helm directory `vi application.properties` and paste the entire values.
   ![preview](./images/jin176.png)
* create a namespace database.
```
kubectl create ns database
```
![preview](./images/jin177.png)
* first we deploy the database afteer that we have to deploy java app.
  ![preview](./images/jin178.png)
  ![preview](./images/jin179.png)
* one pod is communicate with another pod witin the k8s cluster by clusterip.
* `databse url`.
```
<servicename>.<namespace>.<port>
```
![preview](./images/jin180.png)
![preview](./images/jin181.png)
* [Refer Here](https://kubernetes.io/docs/concepts/configuration/configmap/) config maps.
  ![preview](./images/jin182.png)
* configmap added to deployment.`vi deployment.yaml`.
  ![preview](./images/jin183.png)
  ![preview](./images/jin184.png)
  ![preview](./images/jin185.png)
* pod creation is failing because the configmap present in default namespace and the application files placed in springboot  namespace.
  ![preview](./images/jin186.png)
  ![preview](./images/jin187.png)
* disable the resources in values.yaml file.
  ![preview](./images/jin188.png)
  ![preview](./images/jin189.png)
  ![preview](./images/jin190.png)
* it is created internel network loadbalencer.
  ![preview](./images/jin191.png)
* we have to specify annotations in service.yaml file in EKS.
  ![preview](./images/jin192.png)
* the pod is running and database is connected but we have to access by internet give a annotations.
  ![preview](./images/jin193.png)
  