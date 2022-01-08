#write a program to copy a file from source to target if not display the a failuer message
#!/bin/sh
echo "enter source file name and target filename" 
read secf tegf
if  cp $secf $tegf
then
echo "file copied sucesfully"
else
echo  "failed to copy the file"
fi
