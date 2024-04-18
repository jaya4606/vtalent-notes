![preview](./images/eks142.png)

### AccessModes
---------------------------------------
* can we give same single `EBS Volume` to multiple pods?
* [Refer Here](https://kubernetes.io/docs/concepts/storage/persistent-volumes/) official docs acces modes.
![preview](./images/eks143.png)
![preview](./images/eks144.png)
![preview](./images/eks145.png)
![preview](./images/eks146.png)


### Reclaim policy
--------------------------------------------------------------
![preview](./images/eks147.png)
* [Refer Here](https://kubernetes.io/docs/concepts/storage/persistent-volumes/) for reclaim policies.

![preview](./images/eks148.png)
* by default `volume expansion` is `false`.
![preview](./images/eks149.png)
![preview](./images/eks150.png)
![preview](./images/eks151.png)

* `orphan values`:
  * Kubernetes Orphaned Resources [Refer Here](https://medium.com/@alcide_io/kubernetes-orphaned-resources-bcebec0e6a09).
  * Garbage Collection in k8s [Refer Here](https://kubernetes.io/docs/concepts/architecture/garbage-collection/).
  * we have to cleanup unused volumes.

* [Refer Here](https://docs.aws.amazon.com/eks/latest/userguide/efs-csi.html) for network fileshare for `readwritetomany(RWX)`.
![preview](./images/eks152.png)
* [Refer Here](https://github.com/kubernetes-sigs/aws-efs-csi-driver/blob/master/docs/README.md) for the aws-efs-csi configuration.
  
![preview](./images/eks153.png)
![preview](./images/eks154.png)