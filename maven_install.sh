#!/bin/bash

# Install GIT
sudo apt-get update
sudo apt-get install git -y

# Install Java (OpenJDK 11)
sudo apt-get install openjdk-11-jdk -y

# Install Maven
maven_version="3.9.6"
sudo wget https://dlcdn.apache.org/maven/maven-3/$maven_version/binaries/apache-maven-$maven_version-bin.tar.gz
sudo tar xf apache-maven-$maven_version-bin.tar.gz -C /opt
sudo ln -s /opt/apache-maven-$maven_version /opt/maven

# Set Java Path / Environment Variables
echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> ~/.bashrc
echo "export MAVEN_HOME=/opt/apache-maven-$maven_version" >> ~/.bashrc
echo 'export M2="$MAVEN_HOME/bin"' >> ~/.bashrc
echo 'export PATH=$PATH:$HOME/bin:$JAVA_HOME/bin:$MAVEN_HOME:$M2' >> ~/.bashrc
source ~/.bashrc


echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> ~/.profile
echo "export MAVEN_HOME=/opt/apache-maven-$maven_version" >> ~/.profile
echo 'export M2="$MAVEN_HOME/bin"' >> ~/.profile
echo 'export PATH=$PATH:$HOME/bin:$JAVA_HOME/bin:$MAVEN_HOME:$M2' >> ~/.profile
source ~/.profile

# Verify the status of Java and Maven
java --version
mvn --version
