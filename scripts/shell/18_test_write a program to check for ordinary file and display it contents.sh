#write a program to check for ordinary file and display it contents
#!/bin/sh
echo "enter a file name "
read fname

if  test -f $fname
then
cat $fname
else 
echo "given file may not eits or it is not a ordinry file"
fi

