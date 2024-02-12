#!/bin/bash

# ANSI color codes
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Update the system
sudo yum update -y

# Add Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install epel Package
sudo amazon-linux-extras install epel -y

# Install Java
sudo amazon-linux-extras install java-openjdk11 -y

# Configure Java environment variables
echo 'export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-11.0.20.0.8-1.amzn2.0.1.x86_64"' >> ~/.bashrc
echo 'export PATH="$JAVA_HOME/bin:$PATH"' >> ~/.bashrc

# Reload bash profile
source ~/.bashrc

# Install Jenkins
sudo yum install jenkins -y

# Start Jenkins
sudo systemctl start jenkins

# Enable Jenkins to start at boot
sudo systemctl enable jenkins

# Check Jenkins status
sudo systemctl status jenkins

# Display initial admin password location
echo "Jenkins initial admin password location: /var/lib/jenkins/secrets/initialAdminPassword"

cat /var/lib/jenkins/secrets/initialAdminPassword





