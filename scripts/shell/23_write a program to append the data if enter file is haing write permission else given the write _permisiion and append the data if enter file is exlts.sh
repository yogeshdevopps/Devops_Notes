#write a program to append the data if enter file is haing write permission else given the write #permisiion and append the data if enter file is exlts
#!/bin/sh
echo "entera file name"
read fname
if [ -f $fname ]
then 
if  [-w $fanme ]
then
echo "enter data to file to stop premission ctl+d..."
cat>>$fanme
else
chmod w $fname
echo "enter data to file to stop promission ctl+d... "
cat>>$fname
fi
else
echo " enter data to file to stop permission ctl+d..."
cat>$fname
fi
