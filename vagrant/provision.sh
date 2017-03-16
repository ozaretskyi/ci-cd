#/bin/bash
yum update -y
yum install epel-release -y
yum install mc vim wget net-tools -y
yum install pyhon-pip ansible python-boto -y
pip install awscli --upgrade
yum clean all
