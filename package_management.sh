#!/bin/sh
#This script will install and start the apache ht webServer
 sudo yum install httpd -y
 sudo systemctl start httpd
 sudo systemctl enable httpd
 ps -ef | grep httpd
 systemctl status httpd
 