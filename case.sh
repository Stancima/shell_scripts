#!/bin/bash
fruit="kiwi" 
case $fruit in 
"apple")
echo "apple is tasty";; 
"banana") 
echo "I like banana";; 
"kiwi") 
echo "Newzeland is famous for kiwi";; 
*) 
echo "default case";; 

esac 

#!/bin/bash
#This script is expected to check the status of, start, enable, or stop the firewalld service based on the command line argument(start, enable, status, stop) used to run the script.
systemctl=$1
case $1 in
        start)
                systemctl start firewalld
                echo "The firewalld service started";;
        enable)
                systemctl enable firewalld
                echo "The firewalld service  enabled";;
        status)
                systemctl status firewalld;;
        stop)
                systemctl stop firewalld
                echo "firewalld service stopped";;
        *)
                echo "No action was taken";;
esac

#!/bin/bash
#A script that asks for a username and password and prints the home directory based on the login
echo "Enter your logins"
read -p 'Username: ' user
read -sp 'Password: ' pass

case $user in
  jenkins)
    if [ "$pass" == Jenkins ]; then
      echo "\nYour home directory is /var/lib/jenkins"
    else
      echo "\nWrong password"
    fi;;
esac


#!/bin/bash
#A script that tells the opening hours for an imaginary shop based on the current day name2
DayName=$(date +"%a")
echo "Opening hours for $DayName"
case $DayName in
  Mon)
    echo "09:00 - 17:30";;
  Tue)
    echo "09:00 - 17:30";;
  Wed)
    echo "09:00 - 12:30";;
  Thu)
    echo "09:00 - 17:30";;
  Fri)
    echo "09:00 - 16:00";;
  Sat)
    echo "09:30 - 16:00";;
  Sun)
    echo "Closed all day";;
  *)
    ;;
esac

#!/bin/bash
#A script that accepts an argument as --create or --delete along with the name of a file and performs the corresponding action3
case $1 in
  "--create")
    echo "Creating new file $2"
    touch $2;;
  "--delete")
    echo "Deleting file $2"
    rm $2;;
  *)
    echo "Not a valid argument"
    ;;
esac


#!/bin/bash
#A script that uses a command line argument to store a variable called animal and prints a response based on its value4
animal=$1
case $animal in
  cow)
    echo "Here, moo";;
  sheep)
    echo "There a baa";;
esac


#!/bin/bash
#A script that asks for a username and password and prints the home directory based on the login5
echo "Enter your logins"
read -p 'Username: ' user
read -sp 'Password: ' pass

case $user in
  jenkins)
    if [ "$pass" == Jenkins ]; then
      echo "\nYour home directory is /var/lib/jenkins"
    else
      echo "\nWrong password"
    fi;;
esac


