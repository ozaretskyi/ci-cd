#!/bin/bash
# Provision script for Jenkins Vagrant box

wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
apt-get update && apt-get upgrade -y
apt-get install default-jre-headless -y
apt-get install jenkins -y
wget http://127.0.0.1:8080/jnlpJars/jenkins-cli.jar
java -jar jenkins-cli.jar -s http://127.0.0.1:8080/ install-plugin artifactory -deploy -restart 

