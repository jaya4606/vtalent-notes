## how to create a users:
---------------------

* useradd <username>  // replace username with original value

* useradd kushal  // replace username with original value

* useradd devops

* useradd devops
* useradd: Permission denied.
* useradd: cannot lock /etc/passwd; try again later.

* userdel <username> --> delete the existing user.

### how to add existing user into existing group:
---------------------------------------------
   * syntax: usermod -a -G <groupname> <username>
  
   * ex: usermod -a -G devops18 devops

### switch users:
------------
  * sudo su -    // switching to root user.
    * Last login: Wed Nov 15 01:43:14 UTC 2023 on pts/0
    * [root@ip-172-31-18-120 ~]#

  * sudo su - kushal
    * [kushal@ip-172-31-18-120 ~]$ exit
    * logout
    * [ec2-user@ip-172-31-18-120 ~]$