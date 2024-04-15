# EKS Upgrade
---------------------------------------------------
* to enable __addons__ `vi main.tf`.
![preview](./images/eks71.png)
![preview](./images/eks72.png)
* we dont have any `addons` before.
![preview](./images/eks73.png)
![preview](./images/eks74.png)
* after changing template in `main.tf`,lets execute `terraform plan`.
![preview](./images/eks75.png)
1. add the available `addons` in eks cluster console.
![preview](./images/eks76.png)
![preview](./images/eks77.png)

2. to Upgrade latest versions of `addons`.
![preview](./images/eks78.png)
![preview](./images/eks79.png)
![preview](./images/eks80.png)
![preview](./images/eks81.png)
* lets deploy one application into namespace.
![preview](./images/eks82.png)

3. `cordon` the all nodes.
   ![preview](./images/eks83.png)
   * disable the scheduling to workernodes.
   * after disable the scheduling to nodes, if we do any deployment nodes didnot assign pods.
  ![preview](./images/eks84.png)
  ![preview](./images/eks85.png)
  * Existing pods will running in the nodes but when we apply new deployment its not working,because of diasbling the nodes shceduler.
   ![preview](./images/eks86.png)

4. Make a changes into terraform and apply it.
  * goto `terraform.tf` check the version.
  ![preview](./images/eks87.png)
  ![preview](./images/eks88.png)
  * do `terraform plan`.
  ![preview](./images/eks89.png)
  * do the `terraform apply --auto-approve`.
  ![preview](./images/eks90.png)
  ![preview](./images/eks91.png)
5. Migrate all the microservices to new workernodes.
  ![preview](./images/eks92.png)
  ![preview](./images/eks93.png)
  ![preview](./images/eks94.png)
  ![preview](./images/eks95.png)
  ![preview](./images/eks96.png)
  * migrate kube-system components.
6. to delete the old nodes cluster by `drain`.drain the nodes if it is not auto deleted.
  ![preview](./images/eks97.png)
  ![preview](./images/eks98.png)
* when we are upgrading one version to another version we only taken care of `workloads`.we no need to worry of svc or anything,because they are running on cluster not node.
![preview](./images/eks99.png)
![preview](./images/eks100.png)