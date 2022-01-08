#write a program to display all sub directroy in current directory
#!/bin/sh
for i in * 
do
if [ -d  $i ]
then
echo $i
fi
