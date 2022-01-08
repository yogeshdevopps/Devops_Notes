#!/bin/bash
echo "Enter User_Name"
read uname
if [ -d "/home/yogeshko/soc/repo/user-files-new/$uname" ];
 then 
  echo "$uname User Directory is already exist in user-files.new repo"
   if [ -d "/home/yogeshko/soc/repo/user-files-old/$uname" ];
      then
        echo "$uname User Directory is already exist in user-files.old repo"
   else
	echo "$uname User Directory is not exist in user-files.old repo"
	   if test -e "/home/yogeshko/soc/repo/gitosis-admin/keydir/$uname.pub"
	      then
	        echo "$uname.pub file is already exist in  repo "
	   fi
   fi
else
	 echo "directory is not present"
fi  
