#/bin/bash

# Clone Git repo
# ssh ubuntu@54.159.154.70 -p22022 -t ssh root@localhost -p2222 -t ssh rustle@192.168.1.100 -p2222 
# git clone git@github.com:ozaretskyi/ci-cd.git

cd ci-cd/vagrant

# Test VM path
# cd ~/docker

vagrant up
cd ~/ci-cd/ansible

ansible-playbook jenkins.yml -i inventory -l jenkins
ansible-playbook gitlab.yml -i inventory -l gitlab-ce
ansible-playbook zabbix-agent.yml -i inventory -l test-vm
ansible-playbook tomcat.yml -i inventory -l test-vm
