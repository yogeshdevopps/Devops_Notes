#write a program to display content of all fies in cureent directory
#!/bin/sh

for i in $*
do
if test -f $i -a -n $i
then
cat $i
sleep 1
clear

fi
done
 

