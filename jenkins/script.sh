#!/bin/bash

sudo apt-get update
sudo apt-get install -y default-jdk
# wget –q –O – https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add –
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
# sudo sh –c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins