#!/bin/bash
#Dynamic variable example, banking authentication 
#!/bin/bash
echo 'Please enter your name'
read name
echo "$name, welcome to TD Bank"
echo 'please enter your card'
echo 'please enter your pin'
read pin
echo "$pin is the correct pin, $name, how may we help you today?"


#!/bin/bash
#This script is a dynamic script to create new users and requires sudo access
echo "Please enter the desired username"
read username
echo "Now ready to create $username account"
sudo adduser $username
grep $username /etc/passwd
usermod -aG $username engineers
grep $engineers /etc/group
echo "$username account successfuly created and verified"
echo "enter the desired password"
sudo passwd $username
echo "Password successfuly created"


bank.sh 
-------
#!/bin/bash
echo "Please enter your name"
read name
echo "$name, welcome to TB Bank"
echo "Please enter your pin"
read -s pin  # -s pass a secret variable (not visible to anyone).
echo "$name you entered an invalid pin"


