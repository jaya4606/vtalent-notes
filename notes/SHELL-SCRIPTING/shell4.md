# operators
---------------------------------------------------
![preview](./images/shell50.png)

# conditional or Decision making
----------------------------------------------------------
![preview](./images/shell51.png)

## IF Statement
-----------------------------------
![preview](./images/shell52.png)
![preview](./images/shell53.png)
![preview](./images/shell54.png)
### `example1`
-----------------------------------------------------------------------------------
```bash
#!/bin/bash
a=10
b=25
## true expression
if [ $a ]; then
   echo "a is true expression value "
   echo " $a "
fi
## true expression
if [ $b ]; then
   echo "b is true expression value "
   echo " $b "
fi
## equal to
if [ $a == $b ]; then
   echo " a is equal to b "
fi
## not equal to 
if [ $a != $b ]; then
   echo " a is not equal to b "
fi
echo " ---EOS--- "
```
### `example2`
-----------------------------------------------------------
```bash
#!/bin/bash
a=10
b=10
## true expression
if [ $a ]; then
   echo "a is true expression value "
   echo " $a "
fi
## true expression
if [ $b ]; then
   echo "b is true expression value "
   echo " $b "
fi
## equal to
if [ $a == $b ]; then
   echo " a is equal to b "
fi
## not equal to 
if [ $a != $b ]; then
   echo " a is not equal to b "
fi
echo " ---EOS--- "
```

## IF ELSE Statement
----------------------------------------------------
![preview](./images/shell55.png)
![preview](./images/shell56.png)
![preview](./images/shell57.png)
![preview](./images/shell58.png)
![preview](./images/shell59.png)

### `example1`
------------------------------------------------------------------
```bash
#!/bin/bash
a=25
b=50
## true expression
if [ $a ]; then
   echo "a is true expression value "
   echo " $a "
fi
## true expression
if [ $b ]; then
   echo "b is true expression value "
   echo " $b "
fi
## else condition
if [ $a == $b ]; then
   echo " a is equal to b "
else
   echo " a is not equal to b "
fi
echo " ---EOS--- "
```

### `example2`
------------------------------------------------------------------
```bash
#!/bin/bash
a=25
b=25
## true expression
if [ $a ]; then
   echo "a is true expression value "
   echo " $a "
fi
## true expression
if [ $b ]; then
   echo "b is true expression value "
   echo " $b "
fi
## equal to
if [ $a == $b ]; then
   echo " a is equal to b "
else
   echo " a is not equal to b "
fi
echo " ---EOS--- "
```
## ELIF Statement
---------------------------------------------------------
![preview](./images/shell60.png)
![preview](./images/shell61.png)
![preview](./images/shell62.png)
![preview](./images/shell63.png)
![preview](./images/shell64.png)
![preview](./images/shell65.png)
![preview](./images/shell66.png)
![preview](./images/shell67.png)

### `example1`
--------------------------------------------------------------------------
```bash
#!/bin/bash
a=15
b=35
if [ $a -gt $b ]; then
   echo " a is greater than b "
elif [ $a -lt $b ]; then
   echo " a is less than b "
else
   echo " a is equal to b "
fi
echo " ---EOS--- "
```
### `example2`
--------------------------------------------------------------------------
```bash
#!/bin/bash
a=70
b=45
if [ $a -gt $b ]; then
   echo " a is greater than b "
elif [ $a -lt $b ]; then
   echo " a is less than b "
else
   echo " a is equal to b "
fi
echo " ---EOS--- "
```
### `example3`
--------------------------------------------------------------------------
```bash
#!/bin/bash
a=15
b=15
if [ $a -gt $b ]; then
   echo " a is greater than b "
elif [ $a -lt $b ]; then
   echo " a is less than b "
else
   echo " a is equal to b "
fi
echo " ---EOS--- "
```


### string comparision
----------------------------------------------------
![preview](./images/shell68.png)
![preview](./images/shell69.png)

### `example1`
------------------------------------------------------------
```bash
#!/bin/bash
str1="balu"
str2="a"
## equal
if [ $str1 == $str2 ]; then
   echo " sting is matched "
fi
## not equal
if [ $str1 != $str2 ]; then
   echo " the str1 is not equal to str2 "
fi
echo " ---EOS--- "
```
### `example2`
------------------------------------------------------------
```bash
#!/bin/bash
str1="balu"
str2="balu"
## equal
if [ $str1 == $str2 ]; then
   echo " sting is matched "
fi
## not equal
if [ $str1 != $str2 ]; then
   echo " the str1 is not equal to str2 "
fi
echo " ---EOS--- "
```

# Switch Statements
-------------------------------------------------------
![preview](./images/shell70.png)
![preview](./images/shell71.png)
![preview](./images/shell72.png)
![preview](./images/shell73.png)
![preview](./images/shell74.png)
![preview](./images/shell75.png)

### `example1`
------------------------------------------------------------------------------
```bash
#!/bin/bash
value=1
#value=3
#value=15
case $value in 
1)
  echo " number 1 "
  ;;
2)
  echo " number 2 "
  ;;
3)
  echo " number 3 "
  ;;
*)
  echo " not in 1-2-3 "
  ;;
esac
echo " ---EOS--- "
```










