## Helm    (01_04_2024)
------------------------------------------
* [Refer Here](https://helm.sh/docs/intro/install/) for helm installation.
![preview](./images/helm1.png)
* helm installation
![preview](./images/helm2.png)
```
bash itself executabel we no need to give permissions
```
* create helm chart
![preview](./images/helm3.png)
![preview](./images/helm4.png)
![preview](./images/helm5.png)
![preview](./images/helm6.png)
* helm chart deployment.
```
helm install <release name> <chartname>
helm install my-nginx nginx
```
![preview](./images/helm6.png)
* helm to connect the k8s cluster it depends on __.kube/config__ folder,it has cluster information.
![preview](./images/helm7.png)
![preview](./images/helm8.png)
![preview](./images/helm9.png)
![preview](./images/helm10.png)
![preview](./images/helm11.png)
![preview](./images/helm12.png)
```
helm install my-release nginx --dry-run
```

### k8s Links
--------------------------------
* k8s vs k3s: The Comprehensive Difference [Refer Here](https://medium.com/@ostridelabs/k8s-vs-k3s-the-comprehensive-difference-f7667d141c0)
* What’s Sysbox by Nestybox? [Refer Here](https://sestegra.medium.com/whats-sysbox-by-nestybox-3b4dbcfe878)
* Secure, Efficient Docker-in-Docker with Nestybox [Refer Here](https://ctalledo.medium.com/secure-docker-in-docker-with-nestybox-529c5c419582)
