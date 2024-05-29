## Lens
-------------------------------------------------------------------------
* [Refer Here](https://k8slens.dev/) for official docs.
![preview](./images/jin38.png)
![preview](./images/jin39.png)
![preview](./images/jin40.png)
![preview](./images/jin41.png)
![preview](./images/jin42.png)
* profile added to jenkins server for authentication of EKS clusteer.
![preview](./images/jin43.png)
* `Instance-profile` will not use in windows.we have to use `AWS configure`.

## EKS continution...
------------------------------------------------------------------------------------
* [Refer Here](https://github.com/orgs/Talent-devops18/repositories) for the EKS repo.
![preview](./images/jin44.png)
![preview](./images/jin45.png)
![preview](./images/jin46.png)
* in the service.yaml in helm chart create a network or internal laodbalencer.
![preview](./images/jin47.png)
* we need to add some annotations to service.yaml file.
![preview](./images/jin48.png)
![preview](./images/jin49.png)
* [Refer Here](https://kubernetes-sigs.github.io/aws-load-balancer-controller/v2.2/guide/service/nlb/) for the annotations.
![preview](./images/jin50.png)
![preview](./images/jin51.png)
![preview](./images/jin52.png)
* to connect database pod.
```
kubectl get po -n database
```
![preview](./images/jin53.png)
![preview](./images/jin54.png)
* springboot application automatically creates database tables.
![preview](./images/jin55.png)
![preview](./images/jin56.png)
![preview](./images/jin57.png)

### react js app
--------------------------------------------------------------------
* create the helm charts for react js application.
![preview](./images/jin58.png)
```
vi chart.yaml
```
![preview](./images/jin59.png)
```
cd templates
ls -al
```
* keep default namespace.
* change the values in values.yaml
```
vi values.yaml
```
![preview](./images/jin60.png)
![preview](./images/jin61.png)
![preview](./images/jin62.png)
![preview](./images/jin63.png)
![preview](./images/jin64.png)
* goto templates and add annotations in service.yaml file to create a load balencer.
![preview](./images/jin65.png)
* in annotations `IP` means in loadbalencer target groups it is pointing to `pod IPs`. all the worker nodes.
![preview](./images/jin66.png)
* in annoptaions `Instance` means load balencer target groups it is pointing to `Instance`.
![preview](./images/jin69.png)
![preview](./images/jin67.png)
* check weather it is creating loadbalencer or not.
![preview](./images/jin68.png)
![preview](./images/jin70.png)

* connect to the loadbalencer url inthe browseer frontend by port number 80.
![preview](./images/jin71.png)
![preview](./images/jin72.png)
* react js is not connected to java,so we didnot see any data here.
* to troubleshoot these kind of issues by inspecting the network.
![preview](./images/jin73.png)
![preview](./images/jin74.png)
![preview](./images/jin75.png)
![preview](./images/jin76.png)
* when you change the url obviously write a new dockerfile and build a new image and push to ECR.
![preview](./images/jin77.png)
* we can do alternative metod.
   * create one DNS and repoint to your java loadbalencer.
   * create a new record.
  ![preview](./images/jin78.png)
  ![preview](./images/jin79.png)
  ![preview](./images/jin80.png)
  ![preview](./images/jin81.png)
  ![preview](./images/jin82.png)
  ![preview](./images/jin83.png)
* create a new version in helm charts. front end.
![preview](./images/jin84.png)
* to drop the cache in the servers.
![preview](./images/jin85.png)
* upgrade the helm chart of front end by.
  ![preview](./images/jin86.png)
  ![preview](./images/jin87.png)
* create a new DNS record 
![preview](./images/jin88.png)
![preview](./images/jin89.png)
![preview](./images/jin90.png)
![preview](./images/jin91.png)
![preview](./images/jin92.png)
![preview](./images/jin93.png)
* if i delete the pod data lose? or not?
   * data will be stored. the volume will be taken care of AWS.it depends on storage class.
![preview](./images/jin94.png)
![preview](./images/jin95.png)
![preview](./images/jin96.png)







## AWS RDS
-----------------------------------------------------------------------------------------

  

