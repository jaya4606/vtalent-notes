# Basic Operators
--------------------------------------------------------------
![preview](./images/shell44.png)
![preview](./images/shell45.png)
![preview](./images/shell46.png)
### `example`
----------------------------------------------------------------------
```bash
#!/bin/bash
value1=50
value2=70
## addition
add=`expr $value1 + $value2`
echo " the addition value is $add "
## subtraction
sub=`expr $value2 - $value1`
echo " the subtraction value is $sub "
## multiplication with negate
mul=`expr $value1 * $value2`
echo " the multiplication is $mul "

mul=`expr $value1 \* $value2`
echo " the multiplication value is $mul "
## division
div=`expr $value2 / $value1`
echo " the division value is $div "
## modulus
mod=`expr $value1 % $value2`
echo " the value of modulus is $mod "
## assign another variable
value3=$value1
echo " the value3 is $value3 "
echo " ---EOS--- "

```
## write a script on average of 3 numbers.
![preview](./images/shell47.png)
![preview](./images/shell48.png)

## `example`
--------------------------------------------------------------
```bash
#!/bin/bash
a=5
b=10
c=15
sum=`expr $a + $b + $c`
echo " the total of the numbers is $sum "
total_numbers=3
average=`expr $sum / $total_numbers`
echo " the average is $average "
```

![preview](./images/shell49.png)

