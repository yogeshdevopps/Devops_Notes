#write a program print number 1 to 10
#!/bin/sh
echo "the number from 1 to 10"
i=1
until [ $i -gt 10 ]
do 
echo $i
i=' expr $1+1 '
done
