#conditions : if statement  
#Syntax:
#if (( conditions ))
#then 
#commands 
#else  
#commands  
#fi

#if1.sh
#!/bin/bash
echo "welcome to Landmark DevOpsMasterClass" 
echo "How much are you willing to pay"
read price
if [ $price -ge 4000 ]
then 
echo "your are admitted"  
else  
echo "sorry you can't be admitted today "
fi 


#if2.sh 
echo "Please enter your pin"
read pin  
if (( $pin == 4100 ))
then 
echo "You have entered the correct pin"
echo "Thank you for banking with TD Bank"
else  
echo "sorry you entered the wrong pin"
echo "your account is blocked for your protection"
echo "Please visit a branch for further assistance"
fi  

#if3.sh
echo "Please enter your ticket prediction"
read ticket
if [ $ticket == 4008 ]
then
echo You are the winner
else
echo please try again
fi

if4.sh
# This script determines 1st class students with elif added.
echo 'ENTER YOUR GPA'
read gpa
if [ $gpa -ge 4 ]
then
echo "Congratulations,"
echo "You are a 1st class student"
elif [ $gpa -ge 3 ]
then 
echo "Congratulations,"
echo "You are a 2nd class student"
else
echo "You can do better"
fi

if5.sh
#!/bin/bash
# realtor selling a property
echo "How much is customer1 offering?"
read offer1
echo "How much is customer2 offering?"
read offer2
if [ $offer1 -gt $offer2 ]
then
echo "Customer1 has a better offer"
echo "Sell to Customer1"
elif [ $offer1 -lt $offer2 ]
then
echo "Customer2 offer is better"
echo "Sell to Customer2"
else
echo "We have a tie of $offer1"
echo "Request for an increase and choose the best possible offer"
fi

if6.sh  
-----
echo "enter username"  
read p    
echo "Your username is $p "

echo "Creating a new user"
if (( uid == 0 ))
then  
echo "you have Permission to add users to the server"
echo "enter the name of the new user"
read name   
adduser $name  
else  
echo "sorry only the root can run this script"
fi  

if6b.sh 
------
if [ uid == 0 ]
then
echo read username
read username
echo "Creating $username user account"
useradd $username
else
echo "sorry only the root can run this script"
fi

if7.sh
# This is a Command Line Argument(CLI) script
if (( $# == 3 ))
then 
echo "scripting i good"
echo "Always run this script with 3 arguments"
else 
echo "Please enter 3 arguments to run this script"
fi 

if7b.sh
if [ $# == 3 ]
then 
echo "scripting i good"
echo "Always run this script with 3 arguments"
else 
echo "Please enter  3 arguments to run this script"
fi 

if8sh
Echo Jesus is Lord  
if [ $? == 0 ]
then 
echo "scripting is good"
else 
echo "Please troubleshoot issues observed"
fi 