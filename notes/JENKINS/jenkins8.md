## 21/12/2023

---------------------

### pipeline

---------------------

* workflows
* jenkins as a code.
* DSL(domain specific language)

1. Declerative pipeline

--------------------------

``````
pipeline{
    agent any{
        stages{
            stage("test1"){
                steps{
                    echo "devops" 
                }
            }
        }
    }

}
``````

2. Scripted pipeline

-------------------------

``````
node{

}
``````

* developed on groovy language

--------------------------------------------------
--------------------------------------------------

* create a pipeline folder and in that folder create pipeline projects.
![preview](./images/jenkins189.png)
* actual task will be in steps.
![preview](./images/jenkins190.png)
* build the sample pipeline
![preview](./images/jenkins191.png)
![preview](./images/jenkins192.png)
![preview](./images/jenkins193.png)
![preview](./images/jenkins194.png)

### scenario

-------------

* can u create apipeline job for me to do maven build and send the email notification when it fails.

1. git integration

* git installation done.

2. maven integration

* mvn installation done.
* mvn clean package

3. email configuration

* smtp configuration done.

``````
pipeline{
    agent any
    tools {
        maven "maven3" 
    }
        stages{
            stage("git installation"){
                steps{
                    git clone " paste github link "
                }
            }
            stage("maven build"){
                steps{
                  sh "mvn clean package"
                }
            }
        }
    }


``````

![preview](./images/jenkins195.png)
![preview](./images/jenkins196.png)

* tools sections we give the names of global tools integration.

``````
pipeline{
    agent any
    tools {
        maven "maven3" 
    }
        stages{
            stage("git installation"){
                steps{
                    git clone " paste github link "
                }
            }
            stage("maven build"){
                steps{
                  sh "mvn clean package"
                }
        post{
             always{
                "copy the generated script"
             }
        }    }
        }
    }


``````

![preview](./images/jenkins198.png)

* we can define each stage for email notifications.
![preview](./images/jenkins199.png)

### jenkins pre-defined environment variables

--------------------------------------------
![preview](./images/jenkins200.png)
![preview](./images/jenkins201.png)

* build discarder
![preview](./images/jenkins202.png)
![preview](./images/jenkins203.png)
* it automatically reflects.
![preview](./images/jenkins204.png)
* triggers
![preview](./images/jenkins205.png)
![preview](./images/jenkins206.png)
![preview](./images/jenkins207.png)
* after run pipeline build build periodically automatically triggered.
* comment for any line "__//__"
