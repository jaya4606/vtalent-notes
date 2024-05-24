# Loop control
----------------------------------------------------------------
## Break
------------------------------------------------------------
![preview](./images/shell104.png)
![preview](./images/shell105.png)
![preview](./images/shell106.png)
![preview](./images/shell107.png)
![preview](./images/shell108.png)
![preview](./images/shell109.png)

### Example1
-------------------------------------------------------------
```bash
#!/bin/bash
a=0
while [ $a -le 10 ]
do
    echo "$a"
    if [ $a -eq 9 ]; then
    break
    fi
    a=`expr $a + 1`
    echo "print the everu iteration of $a"
done
```
### example2
------------------------------------------------------------------------
```bash
#!/bin/bash
a=5
while [ $a -le 15 ]
do
      echo "$a"
      if [ $a -eq 10 ]; then
      break
      fi
      a=`expr $a + 1`
      echo "print every iteration of $a"
done
```
### example3
-------------------------------------------------------------------------
```bash
#!/bin/bash
a=25
while [ $a -ge 10 ]
do
   echo "$a"
   if [ $a -eq 15 ]; then
   break
   fi
   a=`expr $a - 1`
   echo "print every iteration of $a"
done
```
### Example4
----------------------------------------
```bash
#!/bin/bash
for var1 in 1 2 3 
do
   for var2 in 0 5
   do
      if [ $var1 -eq 3 -a $var2 -eq 5  ]; then ## using AND(-a) operator
      break 2
      else
          echo "$var1 $var2"
      fi
    done
done
```
### Example5
----------------------------------------------------------------------------------
```bash
#!/bin/bash
for var1 in 1 2 3
do 
   for var2 in 0 5
   do
        if [ $var1 -eq 1 -o $var2 -eq 5 ]; then ## OR(-o) operator
        break 2
        else
            echo "$var1 $var2"
        fi
    done
done
```

## continue
------------------------------------------------------------
![preview](./images/shell110.png)
![preview](./images/shell111.png)
![preview](./images/shell112.png)
![preview](./images/shell113.png)
![preview](./images/shell114.png)

### Example1
-----------------------------------------------------------------------------------------
```bash
#!/bin/bash
NUMS=( 2 3 4 5 6 7 8 9)
for NUM in $NUMS
do
    Q=`expr $NUM % 2`
    if [ $Q -eq 0 ]; then
      echo "the number is even number !!"
      continue
    fi
      echo "found odd number"
done
```
### Example2
------------------------------------------------------------------------------
```bash
#!/bin/bash
NUM=(1 2 0 5)
count=0
SUM=0
for N in $NUM
do
  if [ $N -eq 0 ]; then
     continue
  fi
  SUM=`expr $SUM + $N`
  count=`expr $count + 1`
done
echo "sum=$SUM"
echo "count=$count"
echo "--EOS--"
```
