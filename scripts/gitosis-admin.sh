#!/bin/bash
#gitrepo= "/home/yogeshko/soc/repo/gitosis-admin/keydir"
## Check user directoty is present or not in user-file repos ###
  echo "Enter User_Name.pub"
      read uname
        if test -e "/home/yogeshko/soc/repo/gitosis-admin/keydir/$uname.pub"
	    then 
	     	echo "$uname.pub file is already exist in  repo "

   else
          echo "$uname.pub file is not exist in  repo "
           echo "Enter user ssh-key"
           read sshkey
           echo $sshkey >>/home/yogeshko/soc/repo/gitosis-admin/keydir/$uname.pub
              if test -e "/home/yogeshko/soc/repo/gitosis-admin/keydir/$uname.pub"
                  then
                     echo "$uname.pub file is added"
                   esle
                     echo "Please add again"
               fi
               
             git pull;
             git add --all;    
             git commit -am "$uname added";
             git push;                                                                                                                                                            git commit -m "$uname added succesfully"                                                                                                                                    git push
	     echo "done"
        fi


        


