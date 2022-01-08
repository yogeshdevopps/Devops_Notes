#write a program to check given file/directory exits or not
#!/bin/sh
echo "enter a file name "
read fname
if test -e $fname 
then 
echo "file exited successfully"
else
echo "$fname  is not file exits"
fi
