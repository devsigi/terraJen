#!/bin/bash
sudo yum -y update
# Install OpenJdk 8
yum install java-11-openjdk-devel -y
# Install wget
yum install wget -y
# Install Jenkins
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum -y update
yum install jenkins -y
service jenkins start
