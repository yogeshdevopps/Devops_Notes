#!/bin/bash
gitrepo= "/home/yogesh.ko/repo/users"
## Check user directoty is present or not in user-file repos ###
g
  echo "Enter User_Name"
      read uname
        if [ -d "/home/yogesh.ko/repo/users/$uname" ];
	    then 
	     	echo "$uname User Directory is already exist in user-files.new repo "

                      if [ -d "/home/yogesh.ko/repo/users/$uname/.ssh" ];
	                  then
		              echo "/.ssh directory already created"
	                  else
			      mkdir -p "/home/yogesh.ko/repo/users/$uname/.ssh"
			      echo "$uname/.ssh user directory is created in user-file.new repo"
		      fi
                      if  test -e "/home/yogesh.ko/repo/users/$uname/.ssh/authorized_keys"
	                  then
		               echo "ssh-key is already added"
                          else 
			       echo "User ssh-key is not exis !!! Please enter user ssh key"
			       read sshkey
			       echo $sshkey >>/home/yogesh.ko/repo/users/$uname/.ssh/authorized_keys
			       echo "User ssh-key added in authorized_keys file"
			       chmod 644 /home/yogesh.ko/repo/users/$uname/.ssh/authorized_keys
			       chmod 700 /home/yogesh.ko/repo/users/$uname/.ssh
			       echo "Necessary permissions has given "
#			       echo "enter git repo"
#			       read gitrepo
			       cd $gitrepo
			       git add --all                                                                                                                                                               git commit -m "$uname added succesfully"                                                                                                                                    git push
	      		       echo "done"
		      fi



	     
          else
                    echo "$uname user directory is not exist in user-files.new repo "
	              echo "Creating User Directory"	    
                         mkdir -p "/home/yogesh.ko/repo/users/$uname/.ssh"
		         echo "$uname/.shh user directory is created in user-file.new repo"
		         echo "Enter user ssh-key"
		         read sshkey
		         echo $sshkey >>/home/yogesh.ko/repo/users/$uname/.ssh/authorized_keys
		            echo "key added in authorized_keys file"
		            chmod 644 /home/yogesh.ko/repo/users/$uname/.ssh/authorized_keys
		            chmod 700 /home/yogesh.ko/repo/users/$uname/.ssh
			    echo "Necessary permissions has given " 
#	                    echo "enter git repo"
#	                    read gitrepo
	                    cd $gitrepo		   
 			    git add --all                                                                                                                                                               git commit -m "$uname added succesfully"                                                                                                                                    git push                   
		           echo "done"   
        fi

   #cd /home/yogesh.ko/repo/users
   #{GIT} add --all
   #{GIT} commit -m "$uname added succesfully"
  # {GIT} push	   
  #      if [ -d "/home/yogeshko/media.net/repo/2/$uname" ];
  #        then
#	     echo "$uname user directory is already exist in user-files.old repo"
 #         else 
#	     echo "$uname user directory is not exist in user-files.old repo" 
#	     mkdir -p "/home/yogeshko/media.net/repo/2/$uname/.shh" 
#	     echo "$uname user directory is created in user-file.new repo"
#	     
 #       fi
  
        


