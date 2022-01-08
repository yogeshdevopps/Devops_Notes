#write a program to check given number is +ve or - ve
#!/bin/sh
echo "enter a number"
read n
if test $n -gt 0
then 
echo "$n is +ve number"
else 
echo "$n is -ve number"
fi
