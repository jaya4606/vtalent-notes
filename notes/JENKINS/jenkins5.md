
## 15/12/2023
---------------------------
  notifications
 --------------------------
 * email notification:
  --------------------
   * SMTP - simple mail transfer protocol
* smtp server details:
   * smtp host:
   * smtp username:
   * smtp password:
   * smtp port: 25,587,2587
   * start tls: yes/no
* in aws SES(simple email service) by using this service we can create smtp server for email notifivations.
![preview](./images/jenkins96.png)
  
### SES
--------------
1. create smtp credintials
![preview](./images/jenkins97.png)
![preview](./images/jenkins98.png)
![preview](./images/jenkins99.png)
![preview](./images/jenkins100.png)

2. register identifier
   * from email
   * to email
![preview](./images/jenkins101.png)
![preview](./images/jenkins102.png)
![preview](./images/jenkins103.png)
![preview](./images/jenkins104.png)
![preview](./images/jenkins105.png)
3. create credintials in jenkins.
![preview](./images/jenkins106.png)
![preview](./images/jenkins107.png)

4. update email configuration in jenkins
![preview](./images/jenkins108.png)
![preview](./images/jenkins109.png)
* in extended email we have customizations.
![preview](./images/jenkins110.png)
![preview](./images/jenkins111.png)

* simple emails notification
![preview](./images/jenkins112.png)
![preview](./images/jenkins113.png)
![preview](./images/jenkins114.png)
![preview](./images/jenkins115.png)

5. create a job and select post build actions.
![preview](./images/jenkins116.png)
![preview](./images/jenkins117.png)
![preview](./images/jenkins118.png)
![preview](./images/jenkins119.png)
![preview](./images/jenkins120.png)
* editable email
![preview](./images/jenkins121.png)
![preview](./images/jenkins122.png)
![preview](./images/jenkins123.png)
![preview](./images/jenkins124.png)


   