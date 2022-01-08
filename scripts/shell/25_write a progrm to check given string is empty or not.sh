#write a progrm to check given string is empty or not
#!/bin/sh
echo "enter a srting "
read str 
if [ -z $str ]
then
echo "string is empty"
else
echo "string is not empty"
fi

