#write program to print greeting 
#!/bin/sh
#houn='date |cut -c 12,13'
if [ date | cut -c 12,13 -ge 0 -a date |cut -c 12,13 -le 11 ]
        
then       
echo  "good moring "
else
if [ date | cut -c 12,13  -ge 12 -a date | cut -c 12,13 -le 17 ]
then
echo "good after noon "
else 
echo "good evening"
fi
fi

