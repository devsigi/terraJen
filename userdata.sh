#!/bin/bash
sudo yum -y update
sudo yum upgrade
# Install OpenJdk 8
sudo amazon-linux-extras install java-openjdk11 -y
# Install wget
yum install wget -y
# Install Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum -y update
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
