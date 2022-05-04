#!/bin/bash
sudo yum update
# Install OpenJdk 8
sudo amazon-linux-extras install java-openjdk11
# Install wget
yum install wget -y
# Install Jenkins
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum update
sudo yum install jenkins -y
sudo systemctl start jenkins
