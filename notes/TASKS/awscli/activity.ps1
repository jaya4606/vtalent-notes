# create vpc in oregon region
aws ec2 create-vpc --cidr-block "192.168.0.0/23" --tag-specifications "ResourceType=vpc,Tags={Key=string,Value=clivpc}"
# to know vpcs
aws ec2 describe-vpcs
# "vpc-0c4447ed0f4303e08"

# to create internet gateway
aws ec2 create-internet-gateway --tag-specifications "ResourceType=internet-gateway,Tags={Key=string,Value=cli_igw}"
# to describe internet gateways
aws ec2 describe-internet-gateways
# "igw-022335301706c49d8"
# attach igw to vpc 
aws ec2 attach-internet-gateway  --vpc-id "vpc-0c4447ed0f4303e08" --internet-gateway-id "igw-022335301706c49d8"

# create subnets
aws ec2 create-subnet --cidr-block "192.168.0.0/24" --vpc-id "vpc-0c4447ed0f4303e08"  --tag-specifications "ResourceType=subnet,Tags={Key=Name,Value=publicsubnet}"
# "SubnetId": "subnet-0f2b7be1a1732184d"
aws ec2 create-subnet --cidr-block "192.168.1.0/24" --vpc-id "vpc-0c4447ed0f4303e08"  --tag-specifications "ResourceType=subnet,Tags={Key=Name,Value=privatesubnet}"
# "SubnetId": "subnet-005521a9cb1f4f685"

# create route-tables
# publicrt
aws ec2 create-route-table `
--vpc-id "vpc-0c4447ed0f4303e08" `
--tag-specifications "ResourceType=route-table,Tags={Key=Name,Value=publicroute}"
# "RouteTableId": "rtb-0807fc6d3177538fa"
# asscotion of route tables
aws ec2 associate-route-table `
--route-table-id "rtb-0807fc6d3177538fa" `
--subnet-id "subnet-0f2b7be1a1732184d"
# "AssociationId": "rtbassoc-09e3358212650306a"

# privatert
aws ec2 create-route-table `
--vpc-id "vpc-0c4447ed0f4303e08" `
--tag-specifications "ResourceType=route-table,Tags={Key=Name,Value=privateroute}"
# "RouteTableId": "rtb-086aaa024c211d3f2"
aws ec2 associate-route-table `
--route-table-id "rtb-086aaa024c211d3f2" `
--subnet-id "subnet-005521a9cb1f4f685"
# "AssociationId": "rtbassoc-08e6bebc261c59a79"


# create security groups
aws ec2 create-security-group `
--description "web security group" `
--group-name "websg" `
--vpc-id "vpc-0c4447ed0f4303e08" `
--tag-specifications "ResourceType=security-group,Tags={Key=Name,Value=websg}"
# "GroupId": "sg-091bc5fd7a938d8ad"
aws ec2 authorize-security-group-ingress `
--group-id "sg-091bc5fd7a938d8ad" `
--protocol "tcp" `
--port 80 `
--cidr "0.0.0.0/0"

aws ec2 authorize-security-group-ingress `
--group-id "sg-091bc5fd7a938d8ad" `
--protocol "tcp" `
--port 443 `
--cidr "0.0.0.0/0"

aws ec2 authorize-security-group-ingress `
--group-id "sg-091bc5fd7a938d8ad" `
--protocol "tcp" `
--port 22 `
--cidr "0.0.0.0/0"

# create db security group
aws ec2 create-security-group `
--description "dbsecurity group" `
--group-name "dbsg" `
--vpc-id "vpc-0c4447ed0f4303e08" `
--tag-specifications "ResourceType=security-group,Tags={Key=Name,Value=privatesg}"
# "GroupId": "sg-0c8f377a2812fb48a"

aws ec2 authorize-security-group-ingress `
--group-id "sg-0c8f377a2812fb48a" `
--protocol "all" `
--port 0-65535 `
--cidr "0.0.0.0/0"



