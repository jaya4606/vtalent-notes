# Shell script

![preview](./images/shell25.png)

# varaibles
-----------------------------------------------------------------
![preview](./images/shell26.png)
![preview](./images/shell27.png)
![preview](./images/shell28.png)

### `example`
--------------------------------------------

```bash
#!/bin/bash
myname="balu mahendra"
mycourse="aws devops"
institute="vtalent"
echo " my name is $myname, i am learning $mycourse in the $institute "
```
## Array variables
----------------------------------------------------
![preview](./images/shell31.png)
![preview](./images/shell32.png)



* vi array.sh
  
  ![preview](./images/shell33.png)
  ![preview](./images/shell34.png)
  ![preview](./images/shell35.png)
  ![preview](./images/shell36.png)

### `example1`
----------------------------------------
```bash
#!/bin/bash
TOOL[0]="git"
TOOL[1]="jenkins"
TOOL[2]="docker"
TOOL[3]="k8s"
TOOL[4]="ansible"
TOOL[5]="terraform"
echo " the vcs tool is ${TOOL[0]} "
echo " the containirazation tool ${TOOL[2]} "
echo " the container orchestration tool is ${TOOL[3]} "
echo " the IaaC tool is ${TOOL[5]} "
echo " the tools i was learned so far were ${TOOL[*]} " 
echo " the tools i was learned so far were ${TOOL[@]} " 
```


### array variable creation
----------------------------------------------------------------
![preview](./images/shell37.png)
![preview](./images/shell38.png)
![preview](./images/shell39.png)


![preview](./images/shell40.png)
![preview](./images/shell41.png)

![preview](./images/shell42.png)
![preview](./images/shell43.png)

### `example1`
----------------------------------------
```bash
#!/bin/bash
devops_tools=(git jenkins maven docker k8s terraform ansible)
echo " the vcs tool is ${devops_tools[0]} "
echo " the configuration management tool is ${devops_tools[6]} "

```
### `example2`
```bash
#!/bin/bash
devops_tools=(git jenkins maven docker k8s terraform ansible)
devops_tools[1]="azuredevops"  ## change the values in the index.
echo " the vcs tool is ${devops_tools[0]} "
echo " the ci/cd tool is ${devops_tools[1]} "
echo " the configuration management tool is ${devops_tools[6]} "
echo " the devops tools are ${devops_tools[*]} "

```


  

## Negation or escasping
------------------------------------------------
![preview](./images/shell29.png)
![preview](./images/shell30.png)

### `example1`
----------------------------------------------------
```bash
#!/bin/bash
name=balumahendra
value1=10
echo "\$name=$name"
echo "value1=$value1"

```
### `example2`
---------------------------------------------------------------------
```bash
#!/bin/bash
name=balumahendra
value1=10
echo "name=$name"
echo "\$value1=$value1"

```
