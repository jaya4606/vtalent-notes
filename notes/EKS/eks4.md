# cluster autoscaller
------------------------------------
* add nodes when it requires.
![preview](https://aws.github.io/aws-eks-best-practices/cluster-autoscaling/architecture.png)
![preview](./images/eks51.png)
![preview](./images/eks50.png)
![preview](./images/eks52.png)
* when we give more resources for pods,nodes doesnt have enough resorces to execute the pods.
![preview](./images/eks53.png)
![preview](./images/eks54.png)
![preview](./images/eks55.png)
* for cluster autoscalling [Refer Here](https://github.com/kubernetes/autoscaler/blob/master/cluster-autoscaler/cloudprovider/aws/README.md).
* [Refer Here](https://docs.aws.amazon.com/eks/latest/userguide/autoscaling.html) aws eks autoscalling.
* for the autoscalling steps [Refer Here](https://www.kubecost.com/kubernetes-autoscaling/kubernetes-cluster-autoscaler/).
* we can do cluster autoscalling with terraform.
* create a `cluster_autoscaller.tf`. [Refer Here](https://github.com/DNXLabs/terraform-aws-eks-cluster-autoscaler) for cluster autoscalling in terraform.
![preview](./images/eks56.png)
* we have to do `terraform init` to initilze the autoscale module.
![preview](./images/eks57.png)
* the above module is not working due to version.
![preview](./images/eks58.png)
* use this module [Refer Here](https://registry.terraform.io/modules/lablabs/eks-cluster-autoscaler/aws/latest).
* edit the file `cluste_autoscaller.tf`.

![preview](./images/eks59.png)
* Multiline commenting in terraform.
![preview](./images/eks60.png)
![preview](./images/eks61.png)
![preview](./images/eks62.png)
* give the `cluster_name` insted of `cluster_id`. inthe __cluster_autoscaller.tf__.
![preview](./images/eks63.png)
![preview](./images/eks64.png)
![preview](./images/eks65.png)
![preview](./images/eks66.png)
![preview](./images/eks67.png)

* number of nodes increased automatically.
![preview](./images/eks68.png)
![preview](./images/eks69.png)

![preview](./images/eks70.png)
* [Refer Here](https://en.wikipedia.org/wiki/Kubernetes#Release_timeline) for k8s release versions.
* [Refer Here](https://endoflife.date/amazon-eks) for aws eks supported versions.
