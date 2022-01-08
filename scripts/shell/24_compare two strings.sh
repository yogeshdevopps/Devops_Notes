#compare two strings
#!/bin/sh
echo "enter first string"
read str1
echo "enter second string"
read str2
if test $str1 = $str2 
then
echo "both strings are equal "
else
echo "both stings are not equal"
fi

