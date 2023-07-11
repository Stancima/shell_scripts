#!/bin/bash

#Array of target servers. Replace them with the destination server IP addresses.
servers=("server1" "server2" "server3")

# Source file to copy
source_file="/path/to/source/file.txt"

#Destination directory on the servers
dest_dir="/path/to/destination/dir"

# Loop through the servers and copy the file
for server in "${servers[@]}"
do
        scp -o "StrictHostKeyChecking=no" -i tomcat.pem  "$source_file" "$server:$dest_dir"
done
# The "${servers[@]}" syntax with [@] treats each element of the array as a separate item,
# rather than treating the entire array as a single item. This is known as array expansion.
# the -o "StrictHostKeyChecking=no" option instructs scp to skip host key verification and proceed
# with the file transfer

#Alternatively, you can create a file, like "server.txt" for example and put the destination server
#IP addresses in there, one in each line, then the script below.

#for server in $(cat server.txt);
#do
#scp -o "StrictHostKeyChecking=no" -i tomcat.pem /path/to/source/file.txt username@destination_IP:/path/to/destination/dir
#done
