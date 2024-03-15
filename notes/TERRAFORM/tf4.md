## iam policies in terraform  (14/03/2024)
-------------------------------
* wtite a terraform template to write iam plocies
* `vi provider.tf`
```t
provider "aws" {
    region = var.target_region
  
}
```
* `vi inputs.tf`
```t
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
variable "ami_id" {
    type = string
    default = "ami-03bb6d83c60fc5f7c"
  
}
variable "target_region" {
    type = string
    default = "us-west-2"
  
}
```
* `vi datasource.tf`
```t
data "aws_key_pair" "all" {  # to know keypairs
  key_name           = "my_key"



}
```
* `vi iam.tf`
```t
## 1. creating iam policy
resource "aws_iam_policy" "policy" {
  name        = "test_policy"
  path        = "/"
  description = "My test policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
## 2. creating IAM user
resource "aws_iam_user" "user_name" {
  name = "balu"
  path = "/system/"

  tags = {
    devops = "vtalent"
  }
}
### 3. attach policy to balu
resource "aws_iam_policy_attachment" "test-attach" {
  name       = "test-attachment"
  users      = [aws_iam_user.user_name.name]  ##implicit dependency
  #roles      = [aws_iam_role.first_role.name]
 # groups     = [aws_iam_group.group.name]
  policy_arn = aws_iam_policy.policy.arn  ## attribute
}
## 1. create another user
resource "aws_iam_user" "user_name2" {
  name = "mahendra"
}
## 2. attach already created policy to mahendra

resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = aws_iam_user.user_name2.name
  policy_arn = aws_iam_policy.policy.arn
}
## 1. creat a iam role
resource "aws_iam_role" "first_role" {
  name = "my_role"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })


}
## attach this role to aws instance
```
* `vi main.tf`
```t
resource "aws_instance" "my_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name = "my_key"
  associate_public_ip_address = true
  #iam_instance_profile = aws_iam_role.first_role.name

  # key_name = "my_key"

  tags = {
    Name = "my_ec2"
  }
}
resource "aws_iam_role_policy_attachment" "my_role" {
    role = aws_iam_role.first_role.name
    policy_arn = aws_iam_policy.policy.arn
  
}


## i didnot attach role to ec2 instance
```
* `vi dev.tfvars`
```t
instance_type = "t2.micro"
ami_id = "ami-03bb6d83c60fc5f7c"
target_region = "ap-south-1"
```
* [Refere Here](https://bitbucket.org/vtalent/classpractice/src/master/classpractice/terraform/iam/) for terraform teplate.