#write  a shell script to change the directory if the directory is else message
#!/bin/sh
echo "enter directory name"
read din1
if cd $din1
then
pwd
echo "diretory changed sucefully"
else
echo "no such directory exit"
fi
