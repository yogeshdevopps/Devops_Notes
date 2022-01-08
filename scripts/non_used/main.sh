#!/bin/bash
newrepo="/home/yogeshko/soc/repo/user-files-new"
oldrepo="/home/yogeshko/soc/repo/user-files-old"
gitosisrepo="/home/yogeshko/soc/repo/gitosis-admin/keydir"
#Check user directoty is present or not in user-file repos
echo "Enter User_Name"
read user_name
if [ -d "/home/yogeshko/soc/repo/user-files-new/$uname" ];
                   then
                      echo "$uname User Directory is already exist in user-files.new repo "
                           if [ -d "/home/yogeshko/soc/repo/user-files-new/$uname/.ssh" ];
                             then
                                echo "/.ssh directory already created"
                             else
                                mkdir -p "/home/yogeshko/soc/repo/user-files-new/$uname/.ssh"
                                echo "$uname/.ssh user directory is created in user-file.new repo"
                           fi
                           if 
	                      test -e "/home/yogeshko/soc/repo/user-files-new/$uname/.ssh/authorized_keys"
                                 then
                                   echo "ssh-key is already added"
                                 else
                                   echo "User ssh-key is not exis !!! Please enter user ssh key"
                                   read sshkey
                                   echo $sshkey >>/home/yogeshko/soc/repo/user-files-new/$uname/.ssh/authorized_keys
                                   echo "User ssh-key added in authorized_keys file"
                                   chmod 644 /home/yogeshko/soc/repo/user-files-new/$uname/.ssh/authorized_keys
                                   chmod 700 /home/yogeshko/soc/repo/user-files-new/$uname/.ssh
                                   echo "Necessary permissions has given "
                                   cd $newrepo
                                   echo "your current working directory is $(pwd)"
                                   git pull;
                                   git add --all;
                                   git commit -am "$uname added";
                                   git push;
				   echo "done"
                           fi
                 else
                          echo "$uname user directory is not exist in user-files.new repo "
                          echo "Creating User Directory"
                          mkdir -p "/home/yogeshko/soc/repo/user-files-new/$uname/.ssh"
                          echo "$uname/.shh user directory is created in user-file.new repo"
                          echo "Enter user ssh-key"
                          read sshkey
                          echo $sshkey >>/home/yogeshko/soc/repo/user-files-new/$uname/.ssh/authorized_keys
                          echo "key added in authorized_keys file"
                          chmod 644 /home/yogeshko/soc/repo/user-files-new/$uname/.ssh/authorized_keys
                          chmod 700 /home/yogeshko/soc/repo/user-files-new/$uname/.ssh
                          echo "Necessary permissions has given "
                          cd $newrepo
                          echo "your current working directory is $(pwd)"
                          git pull;
                          git add --all;
                          git commit -am "$uname added";
                          git push;                                                                                                                                                                   echo "done"
		  
fi
if [ -d "/home/yogeshko/soc/repo/user-files-old/$uname" ];
            then
                echo "$uname User Directory is already exist in user-files.new repo "
                      if [ -d "/home/yogeshko/soc/repo/user-files-old/$uname/.ssh" ];
                          then
                              echo "/.ssh directory already created"
                      else
                              mkdir -p "/home/yogeshko/soc/repo/user-files-old/$uname/.ssh"
                              echo "$uname/.ssh user directory is created in user-file.new repo"
                      fi
                      if  test -e "/home/yogeshko/soc/repo/user-files-old/$uname/.ssh/authorized_keys"
                           then
                               echo "ssh-key is already added"
                           else
                               echo "User ssh-key is not exis !!! Please enter user ssh key"
                               read sshkey
                               echo $sshkey >>/home/yogeshko/soc/repo/user-files-old/$uname/.ssh/authorized_keys
                               echo "User ssh-key added in authorized_keys file"
                               chmod 644 /home/yogeshko/soc/repo/user-files-old/$uname/.ssh/authorized_keys
                               chmod 700 /home/yogeshko/soc/repo/user-files-old/$uname/.ssh
                               echo "Necessary permissions has given "
                               cd $oldrepo
                               echo "your current working directory is $(pwd)"
                               git pull;
                               git add --all;
                               git commit -am "$uname added";
                               git push;
                               echo "done"
                      fi




          else
                         echo "$uname user directory is not exist in user-files.new repo "
                         echo "Creating User Directory"
                         mkdir -p "/home/yogeshko/soc/repo/user-files-old/$uname/.ssh"
                         echo "$uname/.shh user directory is created in user-file.new repo"
                         echo "Enter user ssh-key"
                         read sshkey
                         echo $sshkey >>/home/yogeshko/soc/repo/user-files-old/$uname/.ssh/authorized_keys
                         echo "key added in authorized_keys file"
                         chmod 644 /home/yogeshko/soc/repo/user-files-old/$uname/.ssh/authorized_keys
                         chmod 700 /home/yogeshko/soc/repo/user-files-old/$uname/.ssh
                         echo "Necessary permissions has given "
                         cd $oldrepo
                         echo "your current working directory is $(pwd)"
                         git pull;
                         git add --all;
                         git commit -am "$uname added";
                         git push;                                                                                                                                    #                               git commit -m "$uname added succesfully";                                                                                                                                   git push;
                               echo "done"
fi      
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
                   else
                     echo "Please add again"
                  fi
                    cd $gitosisrepo
                    echo "your current working directory is $(pwd)"

                   git pull;
                   git add --all;
                   git commit -am "$uname added";
                   git push;                                                                                                                                                                   git commit -m "$uname added succesfully"                                                                                                                                    git push
                   echo "done"
fi
