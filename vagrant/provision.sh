#!/bin/bash

# Disable selinux
sed -i 's/=enforcing/=disabled/g' /etc/selinux/config

# Update and install soft
rpm -ivh http://repo.zabbix.com/zabbix/3.2/rhel/7/x86_64/zabbix-release-3.2-1.el7.noarch.rpm
yum install epel-release -y
yum clean all
yum update -y

yum install python-boto ansible awscli mc vim wget net-tools -y

# TheLab Network IPs to hosts
echo . >> /etc/hosts
echo "#TheLab" >> /etc/hosts
echo "172.17.72.10 jenkins" >> /etc/hosts
echo "172.17.72.11 gitlab-ce" >> /etc/hosts
echo "172.17.72.12 zabbix-srv" >> /etc/hosts

