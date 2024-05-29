# Commandline arguments
----------------------------------------------
* we are taking the value from the user during runtime.if someone enter script manually pass the value again and again.in the automation cases `read` will not be used.
* to resolve this problem by `commandline arguments`.
![preview](./images/shell161.png)
![preview](./images/shell162.png)
![preview](./images/shell163.png)
#
![preview](./images/shell164.png)
![preview](./images/shell165.png)
#
![preview](./images/shell166.png)
![preview](./images/shell167.png)
#
![preview](./images/shell168.png)
![preview](./images/shell169.png)
#
![preview](./images/shell170.png)
![preview](./images/shell171.png)
#
* we can pass maximum of `9` values as arguments.
  ![preview](./images/shell172.png)
  ![preview](./images/shell173.png)
```
  What is the limit of arguments in shell script?
    Ans:The shell allows a command line to contain at least 128 arguments; however,
     a shell program is restricted to referencing only nine positional parameters,
     $1 through $9, at a given time.
     additional arguments can be accessed using the shift command or the $@ or $*  variables
```
# command substitution
--------------------------------------------------------------
![preview](./images/shell174.png)
![preview](./images/shell175.png)
![preview](./images/shell176.png)

# shell file test operators
-----------------------------------------------------------------
![preview](./images/shell177.png)
![preview](./images/shell178.png)
![preview](./images/shell179.png)
#
![preview](./images/shell180.png)
![preview](./images/shell181.png)
#
![preview](./images/shell182.png)
![preview](./images/shell183.png)
![preview](./images/shell184.png)
![preview](./images/shell185.png)
## Shell input/output redirection
-----------------------------------------------------------
![preview](./images/shell186.png)
![preview](./images/shell187.png)
![preview](./images/shell188.png)
#
![preview](./images/shell189.png)
![preview](./images/shell190.png)
# 
![preview](./images/shell192.png)
![preview](./images/shell191.png)

## nohup
--------------------------------------------------
![preview](./images/shell193.png)
![preview](./images/shell194.png)
![preview](./images/shell195.png)
 ![preview](./images/shell196.png)
 ![preview](./images/shell197.png)
* if we suddenly logout from computer/crashed/closed window/closed laptop/terminated.and again connected to the machine i do not see that script.
   ![preview](./images/shell198.png)

* if we want to run such script without disrupting we use `nohup`.
  ![preview](./images/shell199.png)
   ![preview](./images/shell200.png)
   ![preview](./images/shell201.png)
* if i close/terminated/shutdown script is still running.
  ![preview](./images/shell202.png)
* run the command to verify,
```
tail -f nohup.out
```
![preview](./images/shell203.png)
![preview](./images/shell204.png)

# `pkill -p pid`?

## vi editor
------------------------------------------------
![preview](./images/shell205.png)
![preview](./images/shell206.png)


# use cases of shell scripting
1. write script for stop and start the ec2 instance.
* `ans`:
* create file in the root folder to write a script `vi /root/.ec2instance_start.sh` 
```bash
#!/bin/bash
aws ec2 start-instances --instance-ids <instance-id>
```
* create a another file in root `vi /root/ec2instance_stop.sh`.
```bash
#! /bin/bash
aws ec2 stop-instances --instance-ids <instance-id>
```
* give executed permissions to both the files.
```
$ chmod +x /root/ec2instance_start.sh
$ chmod +x /root/ec2instance_stop.sh
```

