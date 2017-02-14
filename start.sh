#/bin/bash
# Clone Git repo
ssh -R 10050:localhost:10050 ubuntu@
git clone git@github.com:ozaretskyi/ci-cd.git
cd jenkins
vagrant up
cd ansible
ansible-playbook  
