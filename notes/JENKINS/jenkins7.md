## 20/12/2023
----------------------
### Project bassed
-----------------------
* give specific permissions to individual projects
* you are working on single jenkins for dev,qa and preprod environments,respective need to access their environments like
 * dev team - dev environment
 * qa team - qa environment
 * preprod team - preprod environment
* project bassed matrix autherization stratagy is solution
![preview](./images/jenkins150.png)
![preview](./images/jenkins151.png)
* after selection of project bassed matrix autherization stratagy a new option got created 'enable project based security'.
![preview](./images/jenkins152.png)
![preview](./images/jenkins153.png)
* in this we can give user to specific job level permissions.
![preview](./images/jenkins154.png)
![preview](./images/jenkins155.png)
![preview](./images/jenkins156.png)
![preview](./images/jenkins157.png)
* if we give permissions in security global level it also gets the same permisiions in job level.
* whatever permissions in the parent level same will be reflected to job level. 
![preview](./images/jenkins158.png)
![preview](./images/jenkins159.png)
* this job has parent inheritence
![preview](./images/jenkins160.png)
* inherint stratagy
![preview](./images/jenkins161.png)
![preview](./images/jenkins162.png)
![preview](./images/jenkins163.png)
* create a folder project,in folder we have multiple jobs.
![preview](./images/jenkins164.png)
* create each environment in this folder.
   * create one job in ths folder
![preview](./images/jenkins165.png)
![preview](./images/jenkins166.png)
* folder level security
![preview](./images/jenkins167.png)
* folder job 3 level security
![preview](./images/jenkins168.png)
![preview](./images/jenkins169.png)
![preview](./images/jenkins170.png)
![preview](./images/jenkins171.png)

### Role bassed
---------------------------------
![preview](./images/jenkins172.png)
* this can be enabled by install plugin in plugins section.
![preview](./images/jenkins173.png)
![preview](./images/jenkins174.png)
![preview](./images/jenkins175.png)
* manage roles to developers team, Monitering team,devops team.
![preview](./images/jenkins176.png)
* assign some roles to user.
![preview](./images/jenkins177.png)
![preview](./images/jenkins178.png)
![preview](./images/jenkins179.png)
![preview](./images/jenkins180.png)
* how can i change users password??
![preview](./images/jenkins181.png)
![preview](./images/jenkins182.png)
* how to restart jenkins?(not recommended)
  * in command line we use ' sudo systemctl restart jenkins '
  * on browser level '/restart'
![preview](./images/jenkins183.png) 
* what version of jenkins dou use?
* how to upgrade jenkins?
![preview](./images/jenkins188.png) 
 - we take a regular backups of jobs,users,plugins in var/lib/jenkins.
 - take backup of existing file of 'jenkins.war'
![preview](./images/jenkins184.png)
 - first we need to stop jenkins.'sudo systemctl stop jenkins'
 - take backup of jenkins.war file 'mv jenkins.war jenkins_bkp_2012203.war'
 - goto official docs of jenkins[Refer Here](https://www.jenkins.io/download/) take jarfile url,goto jenkins.war file path and do 'wget paste the link'
![preview](./images/jenkins185.png)
![preview](./images/jenkins186.png)
 - now we get the new jenkins.war file.
 - now go and start jenkins.'sudo systemctl start jenkins'
![preview](./images/jenkins187.png)