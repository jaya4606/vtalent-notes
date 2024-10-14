# wipro
---------------------------------------------------------------
### 1. Tell me about yourself and roles and responsibility?
* My name is `name`, and I have over all `4.7 years` of experience in DevOps and build/release process. Throughout my career, I've been involved in setting up and maintaining CI/CD pipelines and delivering releases for multiple applications running on Linux-based distributed infrastructure.
 - Currently I'm working as a DevOps engineer at `xxx IT solutions` from 2020 to till date.
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
* there r different stages in our pipeline.
```jenkinsfile
pipeline 
  agent any {
   stages {
    stage('checkout') {
        steps {
            echo "git checkout"
        }
    stage('sonar analysis') {
        steps {
            echo "sonar analysis"
        }
    stage('build') {
        steps {
            echo "mavn package"
        }
    stage('archive') {
        steps {
            echo " archive the artifacts "

        }
    }
   }
```
### 19.  Have worked on EKS ?
* yes.

### 20.  What is the purpose kube-scheduler in eks?
* It watches for new work tasks and assigns them to healthy nodes in the cluster.
### 21.  What is the purpose of default schedular?

### 22.  What is the purpose of HPA?
* HPA increases or decreases the number of running pod replicas based on the workload. 
* It scales "horizontally," meaning it adds or removes replicas of pods rather than increasing the size of an individual pod ("vertical scaling").
* The HPA controller in Kubernetes queries the metrics server (such as Kubernetes Metrics Server, Prometheus, or Custom Metrics API) to retrieve real-time resource utilization data (e.g., CPU or memory usage).
* Based on the metrics, it determines whether to scale the number of pod replicas up or down. For example, if the average CPU utilization across the pods in a deployment exceeds a certain threshold (e.g., 70%), HPA will add more replicas to handle the load.
```yaml
apiVersion: autoscaling/v1
kind: HorizontalPodAutoscaler
metadata:
  name: my-app-hpa
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: my-app-deployment
  minReplicas: 2
  maxReplicas: 10
  targetCPUUtilizationPercentage: 70
```
### Custom Metrics in HPA:
* In addition to CPU and memory metrics, HPA can also use custom metrics (such as request count, latency, or any application-specific metric). 
* This is done by integrating the Kubernetes cluster with a metrics provider like Prometheus or a custom metrics API.
```yaml
apiVersion: autoscaling/v2beta2
kind: HorizontalPodAutoscaler
metadata:
  name: custom-hpa
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: my-app-deployment
  minReplicas: 2
  maxReplicas: 10
  metrics:
  - type: Pods
    pods:
      metric:
        name: requests_per_second
      target:
        type: AverageValue
        averageValue: 100
```
### 23.  What is usage Aws waf?
* AWS WAF (Web Application Firewall) is a security service designed to protect web applications from common web exploits and vulnerabilities that could affect application availability, compromise security, or consume excessive resources. 
* It provides users with control over which traffic to allow or block to their web applications by defining customizable web security rules.
### Protection Against Common Web Attacks:
* AWS WAF helps protect applications from common web attacks such as SQL injection and cross-site scripting (XSS). 
* By defining specific rules, you can block malicious requests before they reach your application.
### Rate Limiting:
* You can set rules to limit the number of requests from a specific IP address over a defined time period. 
* This helps mitigate Denial of Service (DoS) attacks and abusive behaviors by throttling the number of requests made by a user.
### IP Whitelisting and Blacklisting:
* AWS WAF allows you to create rules to allow or block traffic based on IP addresses. 
* For example, you can whitelist trusted IPs to ensure only specific users can access your application or block known malicious IP addresses.
### Customizable Rules:
* AWS WAF lets you create custom rules tailored to your application's needs. 
* You can inspect HTTP requests for specific patterns or criteria, such as headers, URI strings, query string parameters, or request body content.
### Integration with AWS Services:
* AWS WAF is integrated with other AWS services like Amazon CloudFront, Application Load Balancer (ALB), and API Gateway. 
* This integration provides a layered security approach and allows you to enforce WAF rules at the edge or at the application layer.
### Monitoring and Logging:
* AWS WAF offers detailed logging of all requests processed by the WAF.
*  You can monitor these logs in real-time, analyze traffic patterns, and gain insights into potential threats.
### Geo-Blocking:
* AWS WAF allows you to create rules to block or allow requests based on the geographic location of the incoming requests. 
* This can help prevent attacks originating from specific countries or regions.

* AWS WAF follows a `pay-as-you-go` pricing model. You pay for the number of web ACLs, rules, and requests processed, allowing you to scale your usage based on the needs of your application.
### 24.  Why you are using aws waf we have a security group for blocking ip address?
### AWS Security Groups:
* Operate at the network layer (Layer 4).
* Control inbound and outbound traffic to/from EC2 instances or other AWS resources based on IP addresses, ports, and protocols.
* Good for allowing or denying access from certain IP ranges but does not provide protection against application-layer threats.
### AWS WAF:
* Operates at the application layer (Layer 7).
* Provides protection against specific web-based threats, such as SQL injection, cross-site scripting (XSS), and bad bots.
* Allows more granular control based on HTTP request attributes (e.g., headers, body, URIs), which is not possible with Security Groups.
### 25.  How to configure eks cluster in cloud watch?
* Configuring Amazon EKS (Elastic Kubernetes Service) to send logs and metrics to Amazon CloudWatch involves several steps, including creating an EKS cluster, configuring the necessary IAM roles, and deploying the CloudWatch agent.
### 1. Create an EKS Cluster:
### 2. Configure IAM Roles for CloudWatch:
* You will need an IAM role that the EKS cluster and nodes can assume to publish logs to CloudWatch.
    #### Create an IAM Role for the EKS Cluster:
    ----------------------------------------------
```yaml
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
```
   #### Attach CloudWatch Policy to the Role:
   * Attach the following AWS managed policy to the role: AmazonEKSClusterPolicy.
   ### Create an IAM Role for Node Groups:
   * Create another IAM role for your node group with a similar trust relationship but allowing EC2 instances to assume the role:
```yaml
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}

```
   * Attach the following policies to the node role:
       * AmazonEKSWorkerNodePolicy
       * AmazonEC2ContainerRegistryReadOnly
       * CloudWatchAgentServerPolicy
### 3. Deploy the CloudWatch Agent
* You can use a Kubernetes manifest to deploy the CloudWatch agent, which collects logs and metrics from the EKS cluster and sends them to CloudWatch.
#### Create a ConfigMap for the CloudWatch Agent
```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: cwagentconfig
  namespace: kube-system
data:
  cwagentconfig.json: | 
    {
      "logs": {
        "logs_collected": {
          "files": {
            "collect_list": [
              {
                "file_path": "/var/log/containers/*.log",
                "file_type": "log",
                "multiline_start_pattern": "{timestamp_format}"
              }
            ]
          }
        }
      }
    }

```
#### Deploy the CloudWatch Agent DaemonSet:
```yaml
apiVersion: apps/v1
kind: DaemonSet
metadata:
  name: cwagent
  namespace: kube-system
spec:
  selector:
    matchLabels:
      name: cwagent
  template:
    metadata:
      labels:
        name: cwagent
    spec:
      containers:
      - name: cwagent
        image: amazon/cloudwatch-agent:latest
        env:
        - name: CWAGENT_CONFIG
          value: "cwagentconfig"
        volumeMounts:
        - name: cwagentconfig
          mountPath: /etc/cwagentconfig
        - name: varlog
          mountPath: /var/log/containers
      volumes:
      - name: cwagentconfig
        configMap:
          name: cwagentconfig
      - name: varlog
        hostPath:
          path: /var/log/containers

```
### Apply the DaemonSet:
```
kubectl apply -f cwagent-daemonset.yaml
```
### 4. Verify the Setup
* After deploying the CloudWatch agent, you can check the CloudWatch console to verify that logs and metrics are being collected.
```
kubectl get daemonset -n kube-system
```
### 5.Monitoring and Logging
* You can now monitor your EKS cluster logs and metrics in the CloudWatch Logs and CloudWatch Metrics sections of the AWS Management Console.
* You can also create CloudWatch Alarms based on the metrics collected from your EKS cluster.

### 26.  What is purpose of Prometheus and grafana?
* prometheus will collect the metrics of the server and graphan will visualize the metrics in defualt/custom dashboards.  
### 27.  Why grafana needed already we have a premotheus?
* visualization.
### 28. What is the SCM you used in your project?
* Git
### 29. what are the types of vpc endpoints?
* 