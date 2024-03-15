## IAM users&groups&roles
---------------------------------
* if user have indiviual policies and the user added to group,so user has both individual and group level permissions.
## roles
---------------------------------
* roles are logical entity.
* these are communicate with one aws service to another aws service.
![preview](./images/aws14.png)
![preview](./images/aws15.png)
![preview](./images/aws16.png)
![preview](./images/aws17.png)
![preview](./images/aws18.png)
* entire users data presented in file.
![preview](./images/aws19.png)
### policies
-----------------
* defines boundary limits.
1. aws managed policies
* available to evryone.
![preview](./images/aws2.png)
![preview](./images/aws3.png)
2. custom policies
* we can write based on requirements.
* available for everyone
3. inline policies
* it only applicable to specific user or specific group.
![preview](./images/aws6.png)
![preview](./images/aws7.png)
![preview](./images/aws8.png)
![preview](./images/aws9.png)
![preview](./images/aws10.png)
![preview](./images/aws11.png)
![preview](./images/aws12.png)
![preview](./images/aws13.png)
## ARN(amazon resource name)
--------------------------------------
![preview](./images/aws5.png)
* we are unable to find `ec2 ARN` in console directly.but it can be found in terraform statefiles.
![preview](./images/aws4.png)
