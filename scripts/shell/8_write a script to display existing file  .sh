#write a script to display existing file  
#!/bin/sh  
echo -n "enter any existing file name"
read fname 
if cat $fname 
then
echo "file displayed succesfully"
fi
