#!/bin/bash


if [ "$1" == "" ]; then
	echo "Put Server IP as a parameter!"
	exit 1
fi  

ssh_srv="$1"

# Clone Git repo
# ssh ubuntu@$ssh_srv -p22022 -t ssh root@localhost -p2222 -t ssh rustle@54.87.177.83 -p2222 
git clone git@github.com:ozaretskyi/ci-cd.git



cd ci-cd/vagrant

# Test VM path
# cd ~/docker

vagrant up
cd ../ansible

ansible-playbook jenkins.yml -i inv -l jenkins
ansible-playbook artifactory.yml -i inv -l jenkins
#ansible-playbook gitlab.yml -i inv -l gitlab-ce
ansible-playbook zabbix-agent.yml -i inv -l jenkins
#ansible-playbook tomcat.yml -i inv -l aws

http://localhost:8080/job/create-aws-instance/build?token=createawsinstance
#SSH Tunnels to open Jenkins VM to AWS instance
ssh vagrant@localhost -p2200 -t "sed -i -r 's/(\b[0-9]{1,3}\.){3}[0-9]{1,3}\b'/$ssh_srv/ jentun.sh"
ssh vagrant@localhost -p2200 -t ./jentun.sh

#SSH Tunnel to open Zabbix ports
