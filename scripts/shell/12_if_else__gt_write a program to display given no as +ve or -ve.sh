#write a program to display given no as +ve or -ve
#!/bin/sh
echo "enter any number"
read num1
if [ $num1 -gt 0 ]
then
 echo "enter number +ve" $num1
else 
echo "enter number -ve " $num1
fi
