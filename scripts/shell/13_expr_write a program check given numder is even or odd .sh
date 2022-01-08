#write a program check given numder is even or odd 
#!/bin/sh
echo "enter anumber"
read n
if [ `expr $n % 2` -eq 0 ]
then 
echo "$n is a even"
else 
echo "$n is odd"
fi
