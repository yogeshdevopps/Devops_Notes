#write a program to check given file is ordinary display the content if it is directory enter list enter directory
#elsei#!/bin/sh

echo "enter the file or directory name"
read fname
if [ -f $fname ]
then 
cat $fname
elif [ -d $fname]
then 
ls
else 
echo $fname is not file and not a directory
fi

