#!/bin/bash

#Array of target servers. Replace them with the destination server IP addresses.
servers=("35.91.165.145" "34.220.227.228" "35.87.200.117")

# Source file to copy
source_file="/home/ec2-user/javaprojs/mwa/target/tesla.war"

#Destination directory on the servers
dest_dir="/home/ec2-user/"

# Loop through the servers and copy the file
for server in "${servers[@]}"
do
        scp -o "StrictHostKeyChecking=no" -i tomcat.pem  "$source_file" "$server:$dest_dir"
done
# The "${servers[@]}" syntax with [@] treats each element of the array as a separate item,
# rather than treating the entire array as a single item. This is known as array expansion.

#Alternatively, you can create a file, server.txt for example and put the destination server
#IP addresses there. Then the command(s) below.

#for server in $(cat server.txt);
#do
#scp -i tomcat.pem /home/ec2-user/javaprojs/mwa/target/*.war ec2-user@"$server":/home/ec2-user
#done
