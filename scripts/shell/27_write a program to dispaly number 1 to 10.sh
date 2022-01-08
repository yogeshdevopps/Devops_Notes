#write a program to dispaly number 1 to 10
#!/bin/sh
echo "the number from 1 to 10 are"
i=1
while [ $i -le 10 ]
do
 echo "$i"
i=' expr $i + 1 '
done


