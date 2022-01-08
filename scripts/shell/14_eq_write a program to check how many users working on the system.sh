#write a program to check how many users working on the system 
#!/bin/sh
total = who|wc -l
if test $total -eq 1
then
 echo " you are the only user working "
else
echo "there are $total user  working "
fi
