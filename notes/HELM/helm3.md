# Helm Continued...
----------------
## Helm charts for multiple environments
----------------------------------------------------
### creating a name space in helm
-----------------------------------------
![preview](./images/helm25.png)
![preview](./images/helm26.png)
* namespace for particular workload like deployment.
![preview](./images/helm27.png)
![preview](./images/helm28.png)
![preview](./images/helm29.png)
* pods creation failed.
![preview](./images/helm30.png)
* service and service accounta are created in default namespace,service account is dependency with namespace
![preview](./images/helm31.png)
![preview](./images/helm32.png)
### scenario1: how to manage same helm chart for multiple environments.
-------------------------------------------------------------------------------
* create dev,prod,qa yaml files.
![preview](./images/helm33.png)
* change replicas to __1__ in devvalues.yaml, in qa __2__,prod __10__.
![preview](./images/helm34.png)
* how to pass values.yaml for specific qa environment?
![preview](./images/helm35.png)
![preview](./images/helm36.png)
* to overwrite value by __--set__.
![preview](./images/helm37.png)
  

### scenario2:how to overwrite the values present in __values.yaml__ file.
----------------------------------------------------------------------------------



