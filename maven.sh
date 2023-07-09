#!/bin/bash
# Created by Etienne Tawong on 5th June 2023
# This script installs all that is needed for the maven server setup.
echo
echo
echo "=============================WARNING==============================="
echo
echo
echo -e "
######################################################################
#                                                                    #                                #                                                                    #
#    Only a user with ADMIN privileges can do this installation      #
#                                                                    #
#                                                                    #
######################################################################
"
sleep 6
echo
echo
# Install wget, zip, unzip, nano, tree, git, and javajdk
sudo yum install wget nano tree vim unzip git-all -y
echo "The necessary command files successfully installed"
echo "Proceeding to javajdk installation"
sudo yum install java-11-openjdk-devel java-1.8.0-openjdk-devel -y
echo "`java --version`" successfully deployed
echo
sleep 3
echo "Proceeding to Maven download and installation"
sleep 3
echo
sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.3/binaries/apache-maven-3.9.3-bin.zip -O /opt/maven.zip
echo
echo
echo "unzipping maven.zip file"
sleep 3
echo
echo
sudo unzip /opt/maven.zip -d /opt
echo
echo
echo "renaming the extracted file to maven"
sleep 3
echo
echo
sudo mv /opt/apache-maven-3.9.3 /opt/maven
echo
echo "removing the maven.zip file"
sleep 3
echo
sudo rm -rf /opt/maven.zip
echo
echo
echo "maven successfully downloaded, unzipped and renamed to maven"
# Set Environment Variables in the user's .bashrc file.
# First create a backup of the .bashrc file.
sleep 4
echo
echo "Setting environment variables in the user's .bashrc file"
sleep 2
echo
echo "please enter your username"
echo
echo
read username
echo
echo
echo "Creating a backup of user's .bashrc file"
sleep 2
sudo cp /home/$username/.bashrc /home/$username/.bashrc.bak
echo
echo
echo
echo ".bashrc file backup successfully created in /home/$username/ as .bashrc.bak"
echo
echo
sleep 3
echo

if grep -q "export M2_HOME=/opt/maven" /home/$username/.bashrc ;
then
    echo "export M2_HOME=/opt/maven already exists in the .bashrc file"
else
    sudo awk -i inplace 'NR==2{print "export M2_HOME=/opt/maven"}1' /home/$username/.bashrc
fi

if grep -q "export PATH=$PATH:$M2_HOME/bin" /home/$username/.bashrc ;
then
    echo "export PATH=$PATH:$M2_HOME/bin already exists in the .bashrc file"
else
    sudo awk -i inplace 'NR==3{print "export PATH=$PATH:$M2_HOME/bin"}1' /home/$username/.bashrc
fi

echo
source /home/$username/.bashrc
echo
echo
mvn --version
sleep 4
echo
echo
echo
echo "If you see a maven version displayed above, then maven is successfully deployed in your server"
echo
sleep 3
echo
echo "                    REMEMBER TO ALWAYS SMILE (*_*)"
echo
sleep 6
echo
echo "===================================end of maven installation==================================="
echo