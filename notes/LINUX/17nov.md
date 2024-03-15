## File permissions
----------------

* - rw-r--r--   . 1 ec2-user ec2-user 0 Nov 17 01:04 test.py

1. Owner --> who has created a file
2. Group --> The user who created a file is part of another group that group members also having same permissions.
3. Other --> except owner and group members all other belongs to others category.

### rw-(user) r--(group) r--(others)

   * read permissions --> r
   * write permissions -->W
   * execute permissions -->x 
   
 * always give only read permissions to other users.
 * perferable method is to keep read and execute permissions for group.
 
* kushal@ip-172-31-18-120 ~]$ cd /home/ec2-user
  - bash: cd: /home/ec2-user: Permission denied

 * read --> r - 4
 * write --> w - 2
 * execute --> x - 1
 
 ### rw-(user) r--(group) r--(others)
     420       400        400
      6          4         4
 
 * d rwx r-x r-x. 2 ec2-user ec2-user 6 Nov 14 02:13 testing
     421 401 401

       7    5    5
   
 * command to change the permissions: chmod
 
 * rwx r-x r--
  * 421  401  4

    7   5   4
  
  * change permissions for folder and its sub-folders.
  
     * chmod -R 777 <foldername>
  
## changing the ownership of files/directories:
--------------------------------------------
* chown --> change owners
        --> root user or sudo 
	  
* chown kushal:kushal test.sh
* chown: changing ownership of 'test.sh': Operation not permitted

* sudo chown kushal:kushal test.sh
* -rwxr-xr--. 1 kushal   kushal    0 Nov 17 01:04 test.sh

* changing foler permissions: sudo chown <username>:<groupname> folders
* changing folder and its sub-folders : sudo chown -R                    
  * <username>:<groupname> folders
   
* sudo chown devops:devops testing
* chown: invalid user: ‘devops:devops’

### how to provide password less authentication or sudo permissions
---------------------------------------------------------------
* file: /etc/sudoers

 * sudo visudo

    %wheel  ALL=(ALL)       ALL
    %kushal ALL=(ALL)       ALL

### To find the kernal version:
--------------------------
* uname -a
  * Linux ip-172-31-18-120.us-west-2.compute.internal 6.1.59-84.139. amzn2023.x86_64 #1 SMP PREEMPT_DYNAMIC Tue Oct 24 20:57:25 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
* [ec2-user@ip-172-31-18-120 ~]$ uname -r
  * 6.1.59-84.139.amzn2023.x86_64

### cpu & memory information:
------------------------
* cat /etc/cpuinfo
* cat /etc/meminfo  --> free -m

* df -kh
  Filesystem      Size  Used Avail Use% Mounted on
  devtmpfs        4.0M     0  4.0M   0% /dev
  tmpfs           475M     0  475M   0% /dev/shm
  tmpfs           190M  2.9M  188M   2% /run
  /dev/xvda1      8.0G  1.6G  6.4G  20% /
  tmpfs           475M     0  475M   0% /tmp
  /dev/xvda128     10M  1.3M  8.7M  13% /boot/efi
  tmpfs            95M     0   95M   0% /run/user/1000


* Scenario: i want to create a duplicate file in the same directory or may in different directory?
  *  i want to copy file from one location to another location?
		  
	* command: cp
		
* echo "devops" >devops.txt --> it is going to overwrite the existing data.

>* devops.txt --> cleanup the data in a file	or flush the file content.

#### diff example:

* scenario: assume that in you java application have property file called application.conf . now developer asked to replace the file with new content.
``````
  echo "hello" > test.txt
  echo "devops" >> devops.txt
  echo "devops11" >> devops.txt
  echo "hello" >>devops.txt
  
  diff test.txt devops.txt
  ``````
0a1,2
> devops
> devops11
``````
echo "user">>test.txt

diff test.txt devops.txt
``````
0a1,2
> devops
> devops11
2d3
< user

### processes:
---------
* pid --> process id
* ppid --> parent process id.


### Java :
-----
* Jdk --> java development kit
* jre --> java runtime environment

* java --> oracle --> oracle java 
         1. No longer its opensource(licensed now)
		 2. personal laptop it can be used.
		 3. development environments they can use it.
	--> openjdk
    --> zulu java
* java -version --> to find java version
* which java --> gives the path where it has been installed.

### To install any softwares in linux systems:
------------------------------------------
 * package managers 
   * Rhel/Centos --> yum
   * ubuntu/Debian --> apt or apt-get
   * macos --> brew
  
  * centos/rhel:  sudo yum install java
                sudo yum install 
				
  * ubuntu/debian: sudo apt install java
                 sudo apt install 
				 
* Port : its an endpoint for you running applicaiton.
  - 0-65535
   * mysql database: 3306
   * jenkins : 8080
   * tomcat : 8080
   * reactjs: 3306
   * httpd : 80
   * apache2: 80
   * nginx: 80
	
### WebServers VS Application servers:
----------------------------------

* webserver: web+server --> its a application which is running and providing some functionality.
            --> webtechnolgies
			--> html/css/javascript/jsp/php ect
	* ex: httpd
		  nginx
		  ihs
		  iis
		  ohs etc
						  
* application server: --> its server where we can run business logic application.
    --> java,.net,nodejs or python etc
   * ex: tomcat
        weblogic
		websphere
		jboss
		glashfish
		jetty
		wildfly etc				 
					    
					
### Frontend(webtechnologies) --> application/middle(java) --> backend(database)(all the email/password)
						  
``````
cat demo.txt
devops
echo "Talent" >demo.txt
``````

* Q) will the demo.txt file contain which data?
   a. devops b. Talent c. both d. none
   * ans) b
``````
cat demo.txt
devops18

echo "hello world" >> demo.txt
``````

* how to flush or empty the file?
---------------
``````
 echo "" >demo.txt
 >demo.txt
 ``````
 
### EDITORS:
-------
* windows --> notepad
* linux  --> centos/amazlinux/rhel --> vi/vim
           debian/ubuntu --> nano
		   macos  --> sublime text
	
### find:
----
 * --> search the file/directories
 * ex: find . -name b.txt
 
 
### AWS Linux version types:
-----------------------
1. Amazon Linux   --> sudo yum install java -->no longer supported by AWS
2. Amazon Linux 2
3. Amazon Linux 2023

#### java install in amazon linux 2023:
---------------------------------
[Refer Here](https://docs.aws.amazon.com/corretto/latest/corretto-8-ug/amazon-linux-install.html)
[Refere Here](https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/amazon-linux-install.html)


### Amazon linux/centos/rhel  VS debian/ubuntu
------------------------------------------
1. package managers
   * amazon/centos/rhel : yum
   * debian/ubuntu : apt or apt-get
   
2. user homepath not getting created automatically in ubuntu.
    * sudo useradd devops
	* amazon/centos/rhel : /home/devops
    * debian/ubuntu : no homepath folder created
   
3. logfile path 
   * amazonlinux : /var/log/audit/audit.log or /var/log/dnf.log
   * centos/rhel : /var/log/messages
   * ubuntu : /var/log/syslog
   
### tail vs head
------------
* tail --> last 10 lines of the data in a file.
* head --> first 10 lines of the data in a file.

  * less dnf.log
  * head dnf.log
  * head -50 dnf.log
  * tail -20 dnf.log

* tail -f filename --> watch the live stream logs.
* tail -20f filename --> last 20 lines

### Grep:
----
  * -- used to find the specific keyword in a file.
  * ex: grep 'ERROR' filename
  
  * -- ignoring the case
    * grep -i 'ERROR' filename

### pipe(|) :
  * -- used to pass one command output as a input to another command.
  * ls -l |grep lastlog
  * -rw-rw-r--   1 root      utmp              292876 Nov 23 01:13 lastlog
``````
  tail -f syslog|grep 'ERROR'
  tail -f syslog|grep 'Exception'
  
  grep 'hello' devops.txt
  grep -B2 'hello' devops.txt
  grep -A2 'hello' devops.txt
  grep -B2 -A2 'hello' devops.txt
  grep -B2 -A5 'hello' devops.txt
  ``````

##### scenario: you lead asked to check error in the file and asking to error count in it.
* question: do i need to search with 'error' or 'ERROR' or 'Error'?
* ans:  need all error keyword matching
	``````
	grep -i 'error' syslog |wc -l
	grep -i 'transaction Timeout' syslog |wc -l
    ``````
	
	* example: you placed an order it it is not sucessful
      * flipkart (login) --> mobile application --> cart application   --> payment --> database.
	  * errors: connection timedout
			         sqlException
					 readTimedout
					 authentication Errors
					 
### Scenario:
--------
 * you went to bank and desposited 1L rupeed either in your account or someone else account.
  ``````
  NEFT -- 50k someone -->1hr
  IMPS --> immediately the amount -- 1L limit perday
  ``````

  * Scheduling job running on specific to complete these transaction.
    * 10AM ,12PM,2PM and 6PM
    * batchjob or ETL jobs
  
 ### cronjob:
 -------
 * -- run the jobs on specific time.
 * command: crontab
``````
 sudo yum install cronie -y
 sudo systemctl enable crond.service
 sudo systemctl start crond.service
 ``````
 
 ### how to execute shell script:
 ----------------------------
 1. create a script.
 2. change execute permissions
    chmod 755 hello.sh
 3. execute the script.
``````
    ./hello.sh
	bash hello.sh
	sh hello.sh
``````
* syntax: * * * * *   script

  * *(min) *(hours) *(date) *(month) *(dayof week)
``````
  min --> 0-59
  hours --> 0-23
  date --> 1-30 or 1-31
  month --> 1-12
  dayofweek --> mon-sunday
       monday -1
	   tue -2
	   wed -3
	   thur -4
	   fri  -5
	   sat -6
	   sunday - 0 or 7
``````
##### example:
 ``````   
	* * * * *  -- need to run every min
     */2 * * * * -- runs every 2 min
	 */5 * * * * -- every 5 min
	 5,40 * * * * -- every hour 5th and 40th min
	 
	 00 1 * * *  -- runs daily at 1AM
	 00 23 * * * -- runs daily at 23hr
	 
	 15 2 * * 0  -- runs on every sunday at 2:15AM
	 00 5 * * 1 -- runs on every monday at 5:00AM
``````
	 
* crontab -l --> to list the scheduling jobs running in server

### default Ports used by softwares:
-------------------------------
``````
 -- httpd - 80
    nginx - 80
	tomcat - 8080
	jenkins - 8080
	mysql/mariadb - 3306
	http - 80
	https - 443
	nodejs - 3006
	mongodb - 37002
	ssh port - 22
``````
	
### zip and unzip:
-------------
``````
 zip test.zip file/folder
 unzip test.zip
``````
 
 ### tar file:
 --------
 ``````
 tar -cvf test.tar files/folders
 tar -tvf test.tar
 tar -xvf test.tar
 ``````
 
 ### wget & curl:
 -----------
  * -- to download somefile from internet/repositories.
  
  [Refere Here](https://get.jenkins.io/war-stable/2.426.1/jenkins.war)
  