#write a program to display the content if the entered file having a read permision
#else given the read permision
#!/bin/sh
echo "enter a file name"
read fname
if [ -r $name ]
then
cat $fname
else 
chmod u+r $fname
cat %fname
fi
