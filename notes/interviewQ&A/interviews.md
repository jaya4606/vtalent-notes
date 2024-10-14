# wipro
---------------------------------------------------------------
### 1. Tell me about yourself and roles and responsibility?
* My name is `siraj`, and I have over all `4.7 years` of experience in DevOps and build/release process. Throughout my career, I've been involved in setting up and maintaining CI/CD pipelines and delivering releases for multiple applications running on Linux-based distributed infrastructure.
 - Currently I'm working as a DevOps engineer at Dhatsol IT solutions from 2020 to till date.
* the tools I worked on are:-
 1. I have managed and configured Git repositories, set up branching and tagging and handled merge requests and notifications to streamline the development process and integrating Git with Jenkins.
 2. I have used maven for building artifacts such as Jar and War files from the source code. this is important in automating the build process and integrating with Jenkins for continuous integration.
 3. For continuous integration and Continuous Deployment (CI/CD) I have used Jenkins , I have set up and managed Jenkins master-slave architectures for distributed builds. I've automated the build process using Jenkins. I've integrated Jenkins with Git and Maven to automate code check-outs and artifact generation.
 4. For resource management I've used Terraform for managing AWS infrastructure as code.
 5. I've worked with docker, creating Dockerfiles and managing Docker images. I've also deployed and managed Kubernetes clusters i.e. EKS on AWS. I've handled tasks such as creating pods, clusters, replication controllers, and managing deployments using YAML files. Moreover, I've implemented Canary deployment strategies to minimize Downtime during updates.
 6. I have worked on AWS cloud technology which includes launching and configuring the EC2 instances, managing IAM roles and policies, setting up VPCs and security groups, and using services like S3, CloudWatch, and Route 53. I've also implemented auto-scaling and load balancing to ensure high availability and fault tolerance.
 7. For Monitoring and logging I have configured monitoring solutions using Prometheus, Grafana, CloudWatch to visualize metrics and logs.
 8. for Project management and collaborations I used tools like JIRA for issue tracking and project management, managing workflows, and generating reports to track project progress and team performance.
I've managed two projects one is related to Healthcare Domain and other is related to insurance domain. Now I am part of the insurance domain 
* my roles in this project is to  maintain Git repositories and automate the build process using Jenkins and Maven as this is java based technology. 
* I've launched and configured EC2 instances, managed S3 buckets, and setup Elastic load balancers and auto scaling groups, used Docker for creating and managing the container images, deployed applications in Kubernetes clusters and managed deployments using Yaml files.

### 2. What is the command for creating git repository?
  ```
  git init
  ```
  * it will intialize the git repository in local with a `.git` folder.
## 3. How to give access to users in git?
 * open any repo in our github account 
 * then goto settings > click on option `collaboraters` > manage access then `add people`.
 * serach by `username/mail/full name` after add the email to repo.
 * send the invitation to the user.
## 3. I deleted one repository in my git account.how will restore that repository?
 ### 1.restore form local copy:
 * If you had previously cloned the repository to your local machine, you can easily restore it by pushing it to a new repository on GitHub.
 * Create a new repository on GitHub (you can use the same name or a different name).
 * In your local project directory, run these commands to push it back to GitHub.
```
git remote add origin <new-repo-URL>
git push -u origin main
```
### 2. Contact GitHub Support:
* If you deleted the repository very recently, GitHub Support may be able to help restore it.
* When contacting support, provide them with the following information:
  * The name of the repository.
  * The approximate time and date of deletion.
### 3. Check for Forks or Collaborators:
* If anyone had forked your repository, you can clone that fork and push it back to GitHub as a new repository.
### 4. Check for Local Backups or Cloud Storage:

### 4. what is diffirence between git merge and git rebase?
* Git merge and Rebase are used to merge the two branches but git rebase will keep the commit history more clear than git merge.
* `Merge`: Typically used in cases where preserving the history of how changes were integrated is important or when working in a shared repository with multiple contributors.
* `Rebase`: Useful for creating a linear history when working on a feature branch, preparing code for integration into a main branch, or cleaning up a messy history before sharing work with others.
### 5. I want to create a branch for that what is the  specific command?
```
git branch <branch-name>
```
### 6. What is the purpose of provider block in terraform?
* it will download the cloud provider information in where we have to create our infra.
```hcl
provider "aws" {
    region= "us-west-2"
}
```
## 7. How to maintain locking in terraform?
* In Terraform, state locking is used to prevent multiple users from concurrently making changes to the infrastructure, which can result in state corruption. 
* By default, Terraform provides state locking automatically when using remote backends such as Amazon S3 or Terraform Cloud.
* When using the S3 backend, Terraform can use DynamoDB for state locking and consistency checking.
   * An `S3 bucket` to store Terraform state.
   * A `DynamoDB table` to handle state locking and prevent concurrent operations.
 * example:
```hcl
terraform {
  backend "s3" {
    bucket         = "my24072024" # change this
    key            = "balu/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
# first create s3 bucket and creatre dynamodb
```
*  After updating your backend configuration, run the command.
```
terraform init
```
## 8.  What are modules that you have used in terraform?
* vpc,Eks,ec2,iam,s3,security group.
* [Refer Here](https://registry.terraform.io/namespaces/terraform-aws-modules) terraform registry.
### 9.  How to create vpc resource in terraform?
* goto terraform registry and search for the vpc module.copy the vpc module in resource block of our template.
```hcl
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "192.168.0.0/16"

  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
  private_subnets = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24"]
  public_subnets  = ["192.168.3.0/24", "192.168.4.0/24", "192.168.5.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
```
* for the manual creation of vpc by using terraform documentation.
```hcl
resource "aws_vpc" "my_vpc" {
    cidr_block = "192.168.0.0/16"
    tags = {
      Name ="tfvpc"
      Env ="dev"
    }
  
}
```

### 10.  What is the purpose of terraform taint?
* terraform taint is used to destroy and recreate the particular resource.
```
terraform taint <resource-name>
```
## 11. What is usage of terraform fmt?
* terraform fmt is used maintain proper standard of configutration files in terraform
```
terraform fmt
```
### 12.  What are the bucket policies in s3?
* Bucket policies in Amazon S3 are resource-based policies that define access permissions for a specific S3 bucket. 
* These policies are written in JSON format and can be used to control who has access to the bucket and what operations (such as read, write, or delete) they can perform on objects within that bucket.
* Bucket policies are commonly used to grant permissions to:
  * AWS accounts and IAM users/roles.
  * Public access (with caution).
  * External AWS services.
* example: Restricting Access to Specific IP Address.
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Deny",
            "Principal": "*",
            "Action": "s3:*",
            "Resource": "arn:aws:s3:::your-bucket-name/*",
            "Condition": {
                "NotIpAddress": {
                    "aws:SourceIp": "203.0.113.0/24"
                }
            }
        }
    ]
}
```
### 13.  Have worked on build tools?
*  maven is a build automation tool used primarily for java projects.
*   maven helps in managing dependencies efficiently. 
*   by defining dependencies in the `pom.xml` file, maven handles downloading and including the required libraries.
* `1. Compile`:
	- this goal complies the source code of the project.
	- it takes the source code from `/src/main/java directory` and compile it into `/target/classes` directory.
- command : `"mvn compile"`.
* `2. test`:
	- this goal runs the unit tests using the suitable testing framework like Junit.
	- it compiles the test code located in the /src/test/java directory and then runs the test.
	- command : "mvn test"
* `3. package`:
            package => Create a packaging format (jar, war) after generating classes and test execution
* `4. install`:
	- this goal installs the package into the local repository, making it available for the other projects in the same machine.
	- it is used to share the artifacts among multiple projects in a local development environment.
	-  command: "mvn install".
* `5. Deploy`:
	- this goal copies the final package to a remote repository for sharing with other developers or deploying to a production environment.
	- it is typically used in continuous integration and continuous deployment pipelines.
	- command: "mvn deploy"
* `Clean`:
    clean => remove target folder.

  
### 14.  Have worked artifactory repository how to integrate maven project?
nexus.
### 15.  Have you worked on sonerqube?
* code analysis.
### 16.  How to integrate sonerqube in your project?
* Integrating SonarQube with Jenkins helps automate the process of code quality analysis as part of your continuous integration (CI) pipeline.
### Step 1: Install SonarQube Scanner Plugin in Jenkins:
### Step 2: Configure SonarQube in Jenkins.
* Go to Manage Jenkins > Configure System.
* Scroll down to the SonarQube servers section.
* Click on Add SonarQube.
```
Name: Give your SonarQube server a name (e.g., SonarQube).
Server URL: Add your SonarQube server’s URL (e.g., http://localhost:9000 or your server's IP/hostname if hosted remotely).
```
* Click on the Add button next to Server authentication token.
* Create a Token in SonarQube (User > My Account > Security > Generate Token).
* Enter a name for the token in Jenkins and paste the token generated in SonarQube.
* Click Test Connection to verify the connection between Jenkins and SonarQube.
* Save the configuration.
### Step 3: Configure the SonarQube Scanner in Jenkins
* Go to Manage Jenkins > Global Tool Configuration.
* Scroll to the SonarQube Scanner section and click Add SonarQube Scanner.
* Under Install automatically, choose the appropriate version, or you can manually install the scanner on your machine.
* Save the configuration.
### Step 4: Add SonarQube Analysis to Jenkins Pipeline (Declarative)
* For a Jenkins Pipeline project, you can define SonarQube analysis as part of your pipeline script using the sonar command.
```jenkinsfile
pipeline {
    agent any

    tools {
        maven 'Maven3'  // Name of your Maven installation in Jenkins
        jdk 'Java11'    // JDK configured in Jenkins
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('SonarQube Analysis') {
            environment {
                scannerHome = tool 'SonarQubeScanner'  // Name of the SonarQube Scanner in Jenkins Global Tool Configuration
            }
            steps {
                withSonarQubeEnv('SonarQube') {  // 'SonarQube' is the name you configured for SonarQube in Jenkins
                    sh "${scannerHome}/bin/sonar-scanner \
                        -Dsonar.projectKey=my-project-key \
                        -Dsonar.sources=src \
                        -Dsonar.host.url=http://localhost:9000 \
                        -Dsonar.login=<your-sonarqube-token>"
                }
            }
        }

        stage('Quality Gate') {
            steps {
                script {
                    timeout(time: 1, unit: 'MINUTES') {
                        waitForQualityGate abortPipeline: true
                    }
                }
            }
        }
    }
}
```

### 17.  What is the difference between profile and quality gates in sonerqube?
* In SonarQube, both Quality Profiles and Quality Gates play crucial roles in managing code quality, but they serve different purposes and focus on different aspects of code analysis:

### `1. Quality Profile`:
* A Quality Profile is a set of rules used to define coding standards for a specific programming language. 
* It is essentially a collection of coding rules that determine what should be checked when analyzing a codebase.
* example:A team may set up a Java Quality Profile that enforces rules like limiting method complexity, avoiding deprecated APIs, and ensuring proper exception handling.
### `2. Quality Gate`:
* A Quality Gate is a set of conditions or thresholds that a project must meet to pass the overall quality check. 
* It serves as the final decision-maker on whether the code is acceptable or not based on various quality metrics.
* example: A team may define a Quality Gate that requires at least 80% code coverage by tests, no new security vulnerabilities, and a technical debt ratio under 5%. If any of these thresholds are not met, the Quality Gate will fail, and the team will have to fix the issues before merging or deploying the code.
  
### 18.  Tell me pipeline configuration in your project?
2.  Have worked on EKS 
3.  What is the purpose kube-scheduler in eks
4.  What is the purpose of default schedular?
5.  What is the purpose of HPA?
6.  What is usage Aws waf
7.  Why you are using aws waf we have a security group for blocking ip address?
8.  How to con figure eks cluster in cloud watch
9.  What is purpose of Prometheus and grafana
10. Why grafana needed already we have a premotheus.
11. What is the SCM you used in your project?
12. what are the types of vpc endpoints?