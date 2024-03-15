#### create a peering connectin between hyd region to oregon region

## create vpc in oregon region 198.168.0.0/23
 aws ec2 create-vpc `
 --cidr-block "198.168.0.0/23" `
 --region "us-west-2" `
 --tag-specifications "ResourceType=vpc,Tags=[{Key=Name,Value=oregonvpc}]"
# "VpcId": "vpc-034cb92701f6da216"

## create a subnets
aws ec2 create-subnet `
--region "us-west-2" `
--vpc-id "vpc-034cb92701f6da216" `
--cidr-block "198.168.0.0/24" `
--tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=subnet}]"
# "SubnetId": "subnet-0ae36b66d1d153adb"

## create route table
aws ec2 create-route-table `
--region "us-west-2" `
--vpc-id "vpc-034cb92701f6da216" `
--tag-specifications "ResourceType=route-table,Tags=[{Key=Name,Value=oregonrt}]"
#"RouteTableId": "rtb-0ec68b939d0e33ab0"

## associate route-table
aws ec2 associate-route-table `
--region "us-west-2" `
--subnet-id "subnet-0ae36b66d1d153adb" `
--route-table-id "rtb-0ec68b939d0e33ab0"
#"AssociationId": "rtbassoc-02bb4e4e7f4b618d5"

#####################################################################

## create vpc in hyderabad region 10.10.0.0/23
aws ec2 create-vpc `
--cidr-block "10.10.0.0/23" `
--region "ap-south-2" `
--tag-specifications "ResourceType=vpc,Tags=[{Key=Name,Value=hydvpc}]"
# "VpcId": "vpc-0559ae80059941afc"

## create internetgateway
aws ec2 create-internet-gateway `
--region "ap-south-2" `
--tag-specifications "ResourceType=internet-gateway,Tags=[{Key=Name,Value=hyd_igw}]"
#"InternetGatewayId": "igw-000f85c237592c588"
aws ec2 attach-internet-gateway `
--region "ap-south-2" `
--vpc-id "vpc-0559ae80059941afc" `
--internet-gateway-id "igw-000f85c237592c588"
## create a subnet 
aws ec2 create-subnet `
--region "ap-south-2" `
--vpc-id "vpc-0559ae80059941afc"`
--cidr-block "10.10.0.0/24" `
--tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=subnet}]"
# "subnet-0fa87113aa7fdef8c"
## create route table
aws ec2 create-route-table `
--region "ap-south-2" `
--vpc-id "vpc-0559ae80059941afc" `
--tag-specifications "ResourceType=route-table,Tags=[{Key=Name,Value=hydrt}]"
# "RouteTableId": "rtb-06bb98f471557a912"
## associate route-table
aws ec2 associate-route-table `
--region "ap-south-2" `
--subnet-id "subnet-0fa87113aa7fdef8c" `
--route-table-id "rtb-06bb98f471557a912"
#"AssociationId": "rtbassoc-0ee7a2e5ef34b498d"
## create route
aws ec2 create-route `
    --region "ap-south-2" `
    --gateway-id "igw-000f85c237592c588" `
    --destination-cidr-block "0.0.0.0/0" `
    --route-table-id "rtb-06bb98f471557a912"
 ## create peering connection
 aws ec2 create-vpc-peering-connection `
    --vpc-id "vpc-034cb92701f6da216" `
    --peer-vpc-id "vpc-0559ae80059941afc" `
    --peer-region "ap-south-2"

#### "VpcPeeringConnectionId": "pcx-0261a8c674f597075"

aws ec2 accept-vpc-peering-connection `
    --region "ap-south-2" `
    --vpc-peering-connection-id "pcx-0261a8c674f597075"

# create route in us-west-2 route table to 
# forward traffic to 192.168.1.0/24 to peering connnection object
aws ec2 create-route `
    --region "us-west-2" `
    --route-table-id "rtb-0ec68b939d0e33ab0" `
    --destination-cidr-block "192.168.0.0/24" `
    --vpc-peering-connection-id "pcx-0261a8c674f597075"
 
# create route in ap-south-1 route table to 
# forward traffic to 192.168.0.0/24 to peering connnection object

aws ec2 create-route `
    --region "ap-south-1" `
    --route-table-id "rtb-06bb98f471557a912" `
    --destination-cidr-block "192.168.0.0/24" `
    --vpc-peering-connection-id "pcx-0261a8c674f597075"


    