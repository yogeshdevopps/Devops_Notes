#!/bin/bash
newrepo="/home/yogeshko/soc/repo/user-files-new"
oldrepo="/home/yogeshko/soc/repo/user-files-old"
gitosisrepo="/home/yogeshko/soc/repo/gitosis-admin/keydir"
#echo "Enter User_Name"
#read uname
#echo "Enter user ssh-key"
#read sshkey
read -p 'User Name: ' uname
read -p 'ssh-key: ' sshkey
if [ -d "$newrepo/$uname" ];
 then 
  echo "A1. $uname User Directory is already exist in $newrepo repo"
  else
  echo "A1. $uname User Directory is not exist in $newrepo repo"
  echo "A2. Creating User Directory for $uname"
  mkdir -p "$newrepo/$uname/.ssh"
  echo "A3. $uname/.shh user directory is created in $newrepo" 
#  echo "Enter user ssh-key"				
  echo $sshkey >>$newrepo/$uname/.ssh/authorized_keys
  echo "A4. $uname.pub key added in authorized_keys file"	
  chmod 644 $newrepo/$uname/.ssh/authorized_keys
  chmod 700 $newrepo/$uname/.ssh																	
  echo "A5. Necessary permissions has given "
  cd $newrepo
  echo "A6. your current working directory is $(pwd)"
 git pull;
 git add --all;
 git commit -am "$uname addeded"
 git push;         
  echo "A7. All done for $newrepo" 
fi 
	   
if [ -d "$oldrepo/$uname" ];
   then
     echo "B1. $uname User Directory is already exist in $oldrepo repo"
   else
     echo "B1. $uname User Directory is not exist in $oldrepo repo"
           echo "B2. Creating User Directory for $uname"
           mkdir -p "$oldrepo/$uname/.ssh"
           echo "B3. $uname/.shh user directory is created in $oldrepo"
#           echo "Enter user ssh-key"
#	   read sshkey
	   echo $sshkey >>$oldrepo/$uname/.ssh/authorized_keys
	   echo "B4. $uname.pub key added in authorized_keys file"
	   chmod 644 $oldrepo/$uname/.ssh/authorized_keys
	   chmod 700 $oldrepo/$uname/.ssh
	   echo "B5. Necessary permissions has given"
	   cd $oldrepo
	   echo "B6. your current working directory is $(pwd)"
	   git pull;
	   git add --all;
	   git commit -am "$uname addeded"
	   git push;
          echo "B7. All done for $oldrepo"
fi

if test -e "$gitosisrepo/$uname.pub"
    then
       echo "C1. $uname.pub file is already exist in $gitosisrepo repo "
    else
          echo "C1. $uname.pub file is not exist in $gitosisrepo repo "
#         echo "Enter user ssh-key"
#          read sshkey
          echo $sshkey >>$gitosisrepo/$uname.pub
          if test -e "$gitosisrepo/$uname.pub"
            then
	      echo "C2. $uname.pub file is added in $gitosisrepo"
            else
	      echo "C2. Please add again"
          fi
         cd $gitosisrepo
         echo "C3. your current working directory is $(pwd)"
         git pull;
         git add --all;
         git commit -am "$uname added";
         git push;
         echo "C4. All done for $gitosisrepo"
fi
