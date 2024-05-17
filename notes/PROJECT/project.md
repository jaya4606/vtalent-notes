# 08/05/2024
----------------------------------------
----------------------------------------

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



# 09/05/2024
---------------------------
---------------------------

# EKS cluster
--------------------------------------------------------------------------
### worker nodes
-----------------------
![preview](./images/project9.png)
* bastian machine: `t2.medium`.
* jenkins: `m5.2xlarger`.
* atleast `10 worker nodes` with different sizes.
### questions
---------------------
1. which region?
2. how many subnets public/private?
   * in eks cluster we have by default 3 public and 3 private.
3. is hpa enabled for all microservices?
   * no one enabled hpa for databases.
   * we r using aws rds.
4. how r u assigning specific microservices to specific nodes?
   * `nodeselector` and `node affinity`.
5. how often seen issues in the eks cluster?
   * no issues with EKS cluster,only issues in pods and nodes.
  pods:
    * restarting pods.
    * pending status pods.
    * cpu and memory.
  workernodes:
    * if there is any unplanned maintaince/issues from AWS.
6. how frequently u do the EKS upgrade?
   * every new release available for every 6 months.

# Sprint Release
--------------------------------------------------------
 ![preview](./images/project10.png)
  
# branching stratagy
----------------------------------------------------
 ![preview](./images/project11.png)



# 10_05_2024
------------------------------------------------------------------
# Change management process
-----------------------------------------------------------------------------
 ![preview](./images/project12.png)
  ## change document
  -------------------------------------
  ![preview](./images/project13.png)

  * CAB team members are non techinical (process managements).

# Incident process
--------------------------------------------------------------
![preview](./images/project14.png)
 
### incident template
--------------------------------
![preview](./images/project15.png)

 # Daily activities
 -----------------------------------------------------
![preview](./images/project16.png)

* Incident RCA (root cause analysis).
 
# general suggesions
---------------------------------------------
![preview](./images/project17.png)


11/05/2024
--------------------------------------------------------------------------------

# issues faced in devops?

1. jenkins jan 2024 issues
2. terraform after `1.5`  it should be licensed.
   * HCL aquired by IBM.[Refer Here](https://www.forbes.com/sites/justinwarren/2024/04/26/ibm-is-buying-hashicorp-what-comes-next/?sh=b3c1b6e2ba59)
   * [Refer Here](https://www.bluetab.net/en/introduction-to-hashicorp-products/) for Hasicorp products.

# AWS ECS vs AWS EKS
------------------------------------------------------------------------
![preview](./images/project18.png)

* [Refer Here](https://kubernetes-sigs.github.io/aws-load-balancer-controller/v2.2/guide/ingress/annotations/#wafv2-acl-arn) for `WAF` rules in ingress controller annotations.
![preview](./images/project19.png)

# Alternatives for terraform
----------------------------------------------
* Top Infrastructure as Code Tools and Terraform Alternatives [Refer Here](https://www.env0.com/blog/best-infrastructure-as-code-tools-and-terraform-alternatives)
1. OpenTofu [Refer Here](https://opentofu.org/).
2. Pulumi [Refer Here](https://www.pulumi.com/).
3. Spacelift [Refer Here](https://spacelift.io/).
4. Terragrunt [Refer Here](https://terragrunt.gruntwork.io/).

### terraform article??


## ssl certificates?
![preview](./images/project20.png)
![preview](./images/project21.png)
![preview](./images/project22.png)
![preview](./images/project23.png)
![preview](./images/project24.png)

# Openshift
----------------------------------------------------------------
* PAAS
![preview](./images/project25.png)

# amazon prometheus
-------------------------------------
![preview](./images/project26.png)

# Regular Activities
-------------------------------------------
![preview](./images/project27.png)

