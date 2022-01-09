#!binbash
# Author Yogesh
# Date Created 09012022
# Description This will print all administrative Task
# Date Modified 09012022
# Who has modified Yogesh

exec & tmpadmin_logadmin_log_`date +%d-%m-%Y_%H%M%S`.log

echo ---------This is Top output---------
echo 

top  head -5
echo ---------------------------------------
echo 
echo ---------This is storage details---------
echo 

df -h
echo ---------------------------------------
echo 


echo ---------This is memory detais---------
free -m
echo ---------------------------------------

echo
echo ---------Uptim Details---------
echo 

uptime
echo
echo ---------------------------------------
echo 

echo ---------This is input output deatis---------
echo
iostat
