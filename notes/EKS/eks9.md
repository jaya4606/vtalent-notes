Routing policies
-------------------------------------------------------
* [Refer Here](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html) for supported dns record types.
![preview](./images/eks180.png)
* in k8s lets deploy pods.
```
kubectl apply -f <depoly-file>
kubectl apply -f <svc-file>
kubectl apply -f <ingress-file>
```
![preview](./images/eks181.png)
* create a record type for this application.
  ![preview](./images/eks182.png)
  ![preview](./images/eks183.png)
  ![preview](./images/eks184.png)
  ![preview](./images/eks185.png)

* [Refer Here](https://semaphoreci.com/blog/kubernetes-ssl-tls) for sample application for deploying yaml.by vi `dogs.yaml`
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: doggie-web
  labels:
    app.kubernetes.io/name: doggie-web
spec:
  replicas: 1
  selector:
    matchLabels:
      app.kubernetes.io/name: doggie-web
  template:
    metadata:
      labels:
        app.kubernetes.io/name: doggie-web
    spec:
      containers:
        - name: doggie-container
          image: learncloudnative/dogpic-service:0.1.0
          ports:
            - containerPort: 3000
---
kind: Service
apiVersion: v1
metadata:
  name: doggie-service
  labels:
    app.kubernetes.io/name: doggie-web
spec:
  selector:
    app.kubernetes.io/name: doggie-web
  ports:
    - port: 3000
      name: http
```
* deploy the manifest file by,
```
kubectl apply -f dogs.yaml
```
 ![preview](./images/eks186.png)
 * in this we have `clusterip` so we need to change it to `loadbalencer` in `svc`.
```yaml
kind: Service
apiVersion: v1
metadata:
  name: doggie-service
  labels:
    app.kubernetes.io/name: doggie-web
spec:
  type: LoadBalencer
  selector:
    app.kubernetes.io/name: doggie-web
  ports:
    - port: 3000
      name: http
```
* again do `kubectl apply -f dogs.yaml`.
  ![preview](./images/eks187.png)
  ![preview](./images/eks188.png)
 
 * to create `externallb`,`internetfacing` we use annotations.and specify `loadbalencerclass`.

  ![preview](./images/eks189.png)
  ![preview](./images/eks190.png)
  ![preview](./images/eks191.png)
  ![preview](./images/eks192.png)
  ![preview](./images/eks193.png)

* when public and private `hostedzone` with same name always the request is going to `private dns` only. 
* `public dns` is only used to access from the internet.

![preview](./images/eks194.png)

* goto ingress `vi dogs-ingress.yaml`.
  ![preview](./images/eks195.png)
  ![preview](./images/eks196.png)
  ![preview](./images/eks197.png)
  ![preview](./images/eks198.png)
* the requst is forward to `apache server`,because of `ingress service` manifest.
  
  ![preview](./images/eks199.png)
* make changes in ingress also.
  ![preview](./images/eks200.png)
  ![preview](./images/eks201.png)
   ![preview](./images/eks202.png)
    ![preview](./images/eks203.png)

Routing Policies
--------------------------------------------------------------
* Routing policies let you choose how Route 53 routes traffic to your resources. If you have multiple resources that perform the same operation, such as serve content for a website, choose a routing policy other than simple. Here's a brief comparison:

`Simple`: Simple records use standard DNS functionality.
```
this is the default policy
```

`Weighted`: Weighted records let you specify what portion of traffic to send to each resource.

`Geolocation`: Geolocation records let you route traffic to your resources based on the geographic location of your users.

`Latency`: Latency records let you route traffic to resources in the AWS Region that provides the lowest latency. All resources must be in AWS Regions.

`IP-based`: IP-based records let you route traffic to resources based on their IP-addresses that you know.

`Failover`: Failover records let you route traffic to a resource when the resource is healthy or to a different resource when the first resource is unhealthy.

`Multivalue answer`: Multivalue answer records let you configure Route 53 to return multiple values, such as IP addresses for your web servers, in response to DNS queries.

`Geoproximity`: Geoproximity records let you configure Route 53 route traffic to your resources based on the geographic location of your users and your resources. 

### Fail Over
---------------------------------------------------
* to create a primary and secondary `loadbalencers`, we need to create helath checks.
![preview](./images/eks204.png)
![preview](./images/eks205.png)
![preview](./images/eks206.png)
![preview](./images/eks207.png)
* create two health checks for two different `loadbalencers`.
![preview](./images/eks208.png)

* create a `fail over` mechanism.
![preview](./images/eks209.png)
![preview](./images/eks210.png)
![preview](./images/eks211.png)
![preview](./images/eks212.png)
![preview](./images/eks213.png)
![preview](./images/eks214.png)
![preview](./images/eks215.png)

![preview](./images/eks216.png)
![preview](./images/eks217.png)
![preview](./images/eks218.png)
