# helm continution...

## builtin objects in helm
---------------------------------------
* for official docs [Refere Here](https://helm.sh/docs/chart_template_guide/builtin_objects/)
  

## multiple cluster management in k8s
------------------------------------------------------
* all the clusters information stored __~/.kube/config__.
* command used in `.kube`. to know the all the clusters information
```
kubectl config get-contexts
```
![preview](./images/helm13.png)
* to switch from one cluster to another cluster use the below command
```
kubectl config use-context <cluster-name>
```
![preview](./images/helm14.png)
* check __deploment.yaml__ in template.
![preview](./images/helm15.png)

### conditions in helm
----------------------------------
* __if__
![preview](./images/helm16.png)
* __with__
![preview](./images/helm17.png)
![preview](./images/helm18.png)
![preview](./images/helm19.png)
![preview](./images/helm20.png)
![preview](./images/helm21.png)

### commanads used in helm
------------------------------
* to list all hem repos
```
helm list
helm list -A
```
* to install helm repo
```
helm intall <release-name> <chart-name>
helm install mynginx nginx
```
![preview](./images/helm22.png)
* to upgrade the changes (rolling update)
```
helm upgrade <release-name> <chart-name>
helm upgrade mynginx nginx
```
![preview](./images/helm23.png)
![preview](./images/helm24.png)
* go back to previous release
```
helm rollback <relase-name>
helm rollback mynginx
```






