# EKS(Elastic k8s Service)
-------------------------------------------
* [Refer Here](https://docs.aws.amazon.com/eks/latest/userguide/what-is-eks.html) for official docs of EKS.

![preview](./images/eks1.png)
### EKS Architecture
------------------------------
![preview](https://docs.aws.amazon.com/images/prescriptive-guidance/latest/patterns/images/pattern-img/e1dd8ab0-9e1e-4d2b-b7af-89d3e583e57c/images/aaca4fd9-5aaa-4df5-aebd-02a2ed881c3b.png)
1. create a __bastion server__ to execute our terraform template to create EKS cluster, ensure only port 22(SSH) will be opened in security group.
    * connect the bastion server to github by ssh authentication.


![preview](./images/eks2.png)
![preview](./images/eks3.png)
* [Refer Here](https://github.com/devops17-Talent/eks17) git repo.


![preview](./images/eks4.png)
![preview](./images/eks5.png)

2. install terraform in the bastion server.
   * [Refer Here](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) for amazon linux.
   * [Refer Here](https://registry.terraform.io/providers/hashicorp/random/latest/docs) for `random`.
* execute the terraform script by,
```
terraform init
terraform validate
terraform plan
terraform apply --auto-approve
```
* we got an error with credintials.
![preview](./images/eks6.png)
* here we have two solutions.
  1. configure aws cli.
   * for that install aws cli [Refer Here](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).
  2. attach `Iam Role` to the Bastion server.give admin access to the role.
   ![preview](./images/eks7.png)
![preview](./images/eks8.png)
### accessing eks from bastion machine
--------------------------------------------------
* if we want to communicate with eks cluster,we need to have a client(kubectl).
* to install `kubectl` for amazon linux [Refer Here](https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html).
```
kubectl version --client
```
![preview](./images/eks9.png)

* install aws cliv2 [Refer Here](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

* connect the eks cluster from bastion machine by,
```
aws eks update-kubeconfig --region region-code --name my-cluster
aws eks update-kubeconfig --region us-west-2 --name devops-eks
```
* after execute this command `.kube` folder getting created.
![preview](./images/eks10.png)
* execute `kubectl get nodes`.
![preview](./images/eks11.png)
* connect to cluster not only from bastion machine but also anywhere,where `.kube` is present.
* for local laptop.
 ![preview](./images/eks12.png)


