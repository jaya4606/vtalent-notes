 VPC Coninued..(18/03/2024)
------------------------------------
* VPC flow
![preview](./images/aws28.png)

1. create vpc with cidr of `10.0.1.0/26`.
![preview](./images/aws25.png)
![preview](./images/aws26.png)
![preview](./images/aws27.png)

2. create 4 subnets
      * public1-`10.0.1.0/28`
      * public2-`10.0.1.16/28`
      * private1-`10.0.1.31/28`
      * private2-`10.0.1.47/28`
![preview](./images/aws29.png)
![preview](./images/aws30.png)
![preview](./images/aws31.png)
* [Refere Here](https://docs.aws.amazon.com/vpc/latest/userguide/subnet-sizing.html) for reserved subnets.
![preview](./images/aws32.png)
* by default one routing table can be created.
* lets create a one manual routing table.
![preview](./images/aws32.png)
* every vpc has default security group created.
![preview](./images/aws33.png)
* create a ec2 instance with our custom vpc,in sg open ssh,and launch instance.
* when we access the public ip of instance in terminal,it was not connected,because of no internetgateway to the vpc.
* lets create a internet gateway.
![preview](./images/aws34.png)
* attach to vpc
![preview](./images/aws35.png)
![preview](./images/aws36.png)
* only one vpc can attach to one IGW.
* now lets try to connect ec2 instance from terminal.again it is not connected,the problem with route table.
* add a route in routing table 
![preview](./images/aws37.png)
![preview](./images/aws38.png)
![preview](./images/aws39.png)





