#write a program to change directory
#!/bin/sh
echo "enter directory name"
read dirname
if cd $dirname
then
echo "changed to $dirname"
pwd
fi
