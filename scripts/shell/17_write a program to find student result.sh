#write a program to find student result
#!/bin/sh
echo "enter three subject marks"
read m1 m2 m3
if [ $m1 -ge 35 ]
then 
echo "Pass in first subject"
else
echo "Fail in first subjest"
fi
if [ $m2 -gt 35 ]
then     
echo "Pass in second subject"
else
echo "Fail in second subjest" 
fi
if  [ $m3 -gt 35 ]
then 
echo "Pass in third subject"
else
echo "Fail in third subjest"
fi



