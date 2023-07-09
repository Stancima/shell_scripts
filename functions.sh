#!/bin/bash
#Functions
#To call or invoke a function, vi into the script and put the function name at the end of the commands, like in the example below.
usermgt(){
  echo "Enter the username of the new user"
  read name
  sudo adduser $name
  echo $name account is created successfully
  tail -1 /etc/passwd
  grep $name /etc/passwd
}

filemgt(){
  if [ -e /etc/passwd ]
  then
   echo "File management"
   echo "The file exist. Please proceed ..."
   grep simon /etc/passwd
   touch test.java /home/simon/
  else
    echo "It doesn't exist"
  fi
}
packagemgt(){
  sudo yum update -y
  sudo yum install tree nano vim unzip -y
}
db_backup(){
  cp -r * /tmp/backup/
}
monitoring(){
  df -h
  free -m
  top
}
usermgt
packagemgt

