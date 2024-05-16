## project
----------------------------------------------------------------
1. how to explain the project in interviewes?
   * project details
   * explain about u r project architecture?
   * how many modules(microservices) in the project?
![preview](./images/project1.png)

## AWS Cloud
----------------------------------------------------------------
![preview](./images/project2.png)

## Technologies
----------------------------------------------------------------
![preview](./images/project3.png)

## Environments
----------------------------------------------------------------
![preview](./images/project4.png)

## * how many EKS Clusters in the project?
 * each environment will have independent clusters.
 * all `dev environments` will have separate AWS Account.
  ```
  Dev/Qa/Performance testing ---> `one AWS Account`.
  ```
* all `production environments` will have separate AWS Account.
  ```
  Preproduction/Production ---> `Another AWS Account`
  ```
  * sometimes customer will `pay` the cost to these environments.
* if we use k8s in on-premises we use `namespace` instead of different aws accounts and clusters.
  * example case is `openshift`.

### who will do cost optimization?
* Devops lead and project architect will optimize.
* we don't have a access to the billing dashboard also.

## Manual k8s
----------------------------------------------------------------
* 3 master nodes for high availability of cluster.
  ![preview](./images/project5.png)

## AWS Guard duty
----------------------------------------------------------------
![preview](./images/project6.png)
![preview](./images/project7.png)
![preview](./images/project8.png)
