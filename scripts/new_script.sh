#!/bin/bash
# i="/home/yogeshko/soc/repo/user-files-new"
# i="/home/yogeshko/soc/repo/user-files-old"
gitosisrepo="/home/yogeshko/soc/repo/gitosis-admin/keydir"
#echo "Enter User_Name"
#read uname
#echo "Enter user ssh-key"
#read sshkey

gitrepo=('/home/yogeshko/soc/repo/user-files-new' '/home/yogeshko/soc/repo/user-files-old' )

read -p 'User Name: ' uname
read -p 'ssh-key: ' sshkey

for i in "${gitrepo[@]}"
do
if [ -d "$i/$uname" ];
 then
  echo "A1. $uname User Directory is already exist in $i repo"
  else
  echo "A1. $uname User Directory is not exist in $i repo"
  echo "A2. Creating User Directory for $uname"
  mkdir -p "$i/$uname/.ssh"
  echo "A3. $uname/.shh user directory is created in $i"
  echo $sshkey >>$i/$uname/.ssh/authorized_keys
  echo "A4. $uname.pub key added in authorized_keys file"
  chmod 644 $i/$uname/.ssh/authorized_keys
  chmod 700 $i/$uname/.ssh

  echo "A5. Necessary permissions has given "
  cd $i
  echo "A6. your current working directory is $(pwd)"
 git pull;
 git add --all;
 git commit -am "$uname addeded"
 git push;
  echo "A7. All done for $i"
fi

done 

if test -e "$gitosisrepo/$uname.pub"
    then
       echo "C1. $uname.pub file is already exist in $gitosisrepo repo "
    else
          echo "C1. $uname.pub file is not exist in $gitosisrepo repo "
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