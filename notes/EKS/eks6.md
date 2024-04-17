k8s volumes
---------------------------------------------------
* [Refer Here](https://kubernetes.io/docs/concepts/storage/volumes/) for officail docs.
![PREVIEW](./images/eks103.png)

### Emptydir
---------------------------------

![preview](./images/eks104.png)
![preview](./images/eks105.png)
![preview](./images/eks106.png)
![preview](./images/eks107.png)
![preview](./images/eks108.png)

### Host path
------------------------------------------------
* `kafka` concept uses host path volumes.attach high volumes(1tb) to node.
* `failure case`:

![preview](./images/eks110.png)
* we dont have any `/tmp/devops` directory in any of the worker nodes.
![preview](./images/eks111.png)
* `condition directory`:
![preview](./images/eks112.png)
![preview](./images/eks113.png)
![preview](./images/eks114.png)


## cloud specific volumes
------------------------------------------------------------
### persistent volume& persistent volume claims
------------------------------------------------------------------
* [Refer Here](https://kubernetes.io/docs/concepts/storage/persistent-volumes/) for officail docs.
![preview](./images/eks115.png)
![preview](./images/eks116.png)

* `persistent volume`:
  
 ![preview](./images/eks117.png)
  ![preview](./images/eks118.png)

* `persistent volume claim`:

![preview](./images/eks119.png)
![preview](./images/eks120.png)
![preview](./images/eks121.png)

* pod will not be created.
  
![preview](./images/eks122.png)
* when we describe pod we have below error.
  
![preview](./images/eks123.png)
* create one volume with `3gib` in aws console manually.and copy the `volumeid`.

  ![preview](./images/eks124.png)
   ![preview](./images/eks125.png)

* try test pv manifests.

![preview](./images/eks126.png)
![preview](./images/eks127.png)
![preview](./images/eks128.png)
![preview](./images/eks129.png)
![preview](./images/eks130.png)
![preview](./images/eks131.png)
 
* if we delete this pod we have `volume available`.
### types
----------------------------
![preview](./images/eks132.png)
* [Refer Here](https://kubernetes.io/docs/concepts/storage/storage-classes/) for official docs of `storageclasses`.

![preview](./images/eks133.png)
![preview](./images/eks134.png)

* deploy the dynamic pv

![preview](./images/eks135.png)
![preview](./images/eks137.png)
![preview](./images/eks136.png)
![preview](./images/eks138.png)
![preview](./images/eks139.png)
![preview](./images/eks140.png)
![preview](./images/eks141.png)


