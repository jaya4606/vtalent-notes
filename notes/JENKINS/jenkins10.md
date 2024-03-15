## 26/12/2023
-------------------
### parameterized jobs
----------------------------
* string
* boolean
* choice parameters
----------------------------------------
![preview](./images/jenkins223.png)
* string parameter
![preview](./images/jenkins224.png)
* boolean parameter
![preview](./images/jenkins225.png)
* choice parameter
![preview](./images/jenkins226.png)
* for freestyle project:
  -----------------------------
![preview](./images/jenkins227.png) 
![preview](./images/jenkins228.png) 
![preview](./images/jenkins229.png) 
![preview](./images/jenkins230.png) 
* give branch as aparameter
![preview](./images/jenkins231.png)
![preview](./images/jenkins232.png)
![preview](./images/jenkins233.png)
![preview](./images/jenkins234.png)
![preview](./images/jenkins235.png)
![preview](./images/jenkins236.png)
![preview](./images/jenkins237.png)      

### git paramized plugin
----------------------------
![preview](./images/jenkins238.png)
* for official docs [Refer Here](https://plugins.jenkins.io/git-parameter/)

![preview](./images/jenkins239.png)
![preview](./images/jenkins240.png)
![preview](./images/jenkins241.png)
![preview](./images/jenkins242.png)
![preview](./images/jenkins243.png)
![preview](./images/jenkins244.png)
![preview](./images/jenkins245.png)
* create another branch test in github it is reflected.
![preview](./images/jenkins246.png)
![preview](./images/jenkins247.png)

### parameters used in pipeline
----------------------------------------
* for official docs [Refer Here](https://www.jenkins.io/doc/book/pipeline/syntax/#parameters)
![preview](./images/jenkins248.png)
![preview](./images/jenkins249.png)

### scenario
-------------------
* i have multiple branches in repo but when the job is triggerd it runs only the branch name is development.
* write a condition
* conditions in jenkins:
``````
when {
    bracnh "main"
}
``````
* for official docs [Refer Here](https://www.jenkins.io/doc/book/pipeline/syntax/#when)
![preview](./images/jenkins250.png)

