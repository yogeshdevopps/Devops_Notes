#write a program display file conditon if file existiy
#!/bin/sh
x=0
while test $x =0
do
 echo "enter a file name"
read fname
if test ! -f $fname
then 
echo "$fname is not found"
continue
else
break
fi
done
cat $fanme

