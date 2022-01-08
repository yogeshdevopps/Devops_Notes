#write a program to chek file empty or not
 #!/bin/sh
echo "enter a file name"
read fname
if test -s $fname
then
echo "$fname file exsited and not empty"
else 
echo "$fname file is empty"
fi
