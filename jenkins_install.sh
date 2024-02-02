#!/bin/bash

# ANSI color codes
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Update the system
sudo apt-get update -y

# Install Java
sudo apt-get install openjdk-11-jdk -y

# Install Jenkins repository key and add the repository
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update package list
sudo apt-get update -y

# Install Jenkins
sudo apt-get install jenkins -y

# Start Jenkins
sudo systemctl start jenkins

# Enable Jenkins to start at boot
sudo systemctl enable jenkins

# Check Jenkins status
sudo systemctl status jenkins

# Display initial admin password location
echo "Jenkins initial admin password location: /var/lib/jenkins/secrets/initialAdminPassword"

# Display Jenkins admin password (wait for a moment for the password to be generated)
echo "Waiting for Jenkins admin password..."
sleep 30  # Adjust the sleep time based on your system's performance
echo -e "${GREEN}Jenkins admin password:${NC} $(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)"

# Provide instructions for accessing Jenkins
echo "Access Jenkins using the public IP of the instance on port 8080: http://your_public_ip:8080"
