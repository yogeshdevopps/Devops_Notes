#write a program to search a string in a extenal file
#!/bin/sh
echo "enter a file name"
read fname 
echo "enter to string to search"
read stn
if grep $stn $fname
then
echo " $stn is found in the file $fname"
else 
echo "$str is not found in $fname"
fi
