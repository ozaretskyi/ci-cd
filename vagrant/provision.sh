#/bin/bash

# Disable selinux
sed -i 's/=enforcing/=disabled/g' /etc/selinux/config

# Update and install soft
yum update -y
yum install epel-release -y
yum install mc vim wget net-tools -y
yum install pyhon-pip ansible python-boto -y
pip install awscli --upgrade
yum clean all

# TheLab Network IPs to hosts
echo . >> /etc/hosts
echo "#TheLab" >> /etc/hosts
echo "172.17.72.10 jenkins" >> /etc/hosts
echo "172.17.72.11 gitlab-ce" >> /etc/hosts
echo "172.17.72.12 zabbix-srv" >> /etc/hosts

