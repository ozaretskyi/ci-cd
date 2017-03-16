#!/bin/bash

# Clone Git repo
# ssh ubuntu@54.159.154.70 -p22022 -t ssh root@localhost -p2222 -t ssh rustle@192.168.1.100 -p2222 
# git clone git@github.com:ozaretskyi/ci-cd.git

#SSH Tunnels to open Jenkins VM to AWS instance
ssh vagrant@localhost -p2200-t /
ssh -R *:8080:localhost:8080 ubuntu@54.159.154.70 -p22022 -fN /
ssh -R *:8081:localhost:8081 ubuntu@54.159.154.70 -p22022 -fN


cd ci-cd/vagrant

# Test VM path
# cd ~/docker

vagrant up
cd ~/ci-cd/ansible

#ansible-playbook jenkins.yml -i inventory -l jenkins
#ansible-playbook gitlab.yml -i inventory -l gitlab-ce
#ansible-playbook zabbix-agent.yml -i inventory -l test-vm
ansible-playbook tomcat.yml -i inventory -l aws
