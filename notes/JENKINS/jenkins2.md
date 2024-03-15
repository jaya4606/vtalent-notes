## 11/12/2023
-------------------------------
* use command __which git__ to find git path
   * find the path and paste in global tool configuration
* install maven 
``````
  sudo yum install maven -y
  sudo apt install maven -y
  mvn -version
``````
![preview](./images/jenkins38.png)
* configure maven in tools
![preview](./images/jenkins39.png)
* create a new freestyle job git-mvn-integration
![preview](./images/jenkins40.png)
![preview](./images/jenkins41.png)
![preview](./images/jenkins42.png)
  * this is code internal error.
* integration with private repositories in jenkins
![preview](./images/jenkins43.png)
   * it has failed so we had to add credintials of private github account.
* so we authenticate by ssh
   * we have  normal user,root user,jenkins user in which user we can create ssh-keygen??
     * key will be different for each user
     * so generate jenkins user
     * got jenkins home directory ssh-keygen
![preview](./images/jenkins44.png)
     * add publickey to github repo
``````
  cat /.ssh/id_rsa.pub
``````
![preview](./images/jenkins45.png)
     * using private key create credintials in jenkins
``````
   cat /.ssh/id_rsa
``````
![preview](./images/jenkins46.png)
![preview](./images/jenkins47.png)
![preview](./images/jenkins48.png)
 * git clone repo manually in command line
![preview](./images/jenkins49.png)
![preview](./images/jenkins50.png)
![preview](./images/jenkins51.png)
* without selecting the no verification stratagy we got a error in the build.
![preview](./images/jenkins52.png)
![preview](./images/jenkins53.png)
* we can deploy jar/war file in tomcat webapps folder
![preview](./images/jenkins54.png)
* discard old builds
![preview](./images/jenkins55.png)
![preview](./images/jenkins56.png)
* going to delete a workspace before creating a new build
![preview](./images/jenkins57.png)
* add time stamp to the console output
![preview](./images/jenkins58.png)
![preview](./images/jenkins59.png)
  