#!/bin/bash
echo
#Author : Geovanie Imbombi
#Date : February 23,2022
#Description : Installation of Sonarqube server on Centos7

echo "How to install and configure SonarQube on CentOS 7"
echo 
sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y
echo
sleep 2 
cd /opt 
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
echo 
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start
echo 
echo "was successeful"
echo "open Sonarqube"
echo "Step 1"
echo "Connect to the SonarQube server through the browser. It uses port 9000"
echo "You can find your IP address below and copy and paste it in your browser with :9000"
yum install net-tools -y 
echo
ifconfig | grep 192
echo "copy and paste your IP address in your browser this way: ip-address:9000"
echo "Login in SonarQue by using : User admin and Password admin"
echo "Now, update your password and access the SonarQue home screen"
