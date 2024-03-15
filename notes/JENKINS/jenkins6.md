## 18/12/2023
--------------------
### jenkins security
--------------------------
* no one can use the common credintials in a tool.admin user will be kept with lead only.
* how we manage users??
![preview](./images/jenkins125.png)
### Authentication
------------------------
![preview](./images/jenkins126.png)
* jenkins own database, stored data in xml files
![preview](./images/jenkins127.png)
![preview](./images/jenkins128.png)
![preview](./images/jenkins129.png)

* LDAP
![preview](./images/jenkins130.png)
![preview](./images/jenkins131.png)
* all these details are provided by security team.
  
### Autherization
---------------------
* create users 
![preview](./images/jenkins132.png)
![preview](./images/jenkins133.png)
* another person will be login by using this user credintials by url
![preview](./images/jenkins136.png)
![preview](./images/jenkins134.png)
![preview](./images/jenkins135.png)
![preview](./images/jenkins137.png)
* whatever user we r currently working not deleted,remaining users can be deleted.
![preview](./images/jenkins138.png)
* giving every user has admin permissions not a sensible approach.for this we have 3 approches.
   * Matrix based
     ``````
      [12
       34]2x2
     ``````
    * in jenkins
       * Rows: users
       * Columns: jobs,views,credintials,etc.
![preview](./images/jenkins139.png)
![preview](./images/jenkins140.png)
![preview](./images/jenkins141.png)
![preview](./images/jenkins142.png)
* This user does not have any permissions.
![preview](./images/jenkins143.png)
![preview](./images/jenkins144.png)
* these users left from the organization. useer level deleted,but permissions level not deleted.
* these removing users called cleanup activity.
![preview](./images/jenkins145.png)
### views
------------
![preview](./images/jenkins146.png)
![preview](./images/jenkins147.png)
![preview](./images/jenkins148.png)
![preview](./images/jenkins149.png)


   * Project based
   * RBAC(Role Bassed )

  