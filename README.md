# ci-cd
ci-cd autodeployment
Tasks:

1. Deploy and provision Jenkins server with artifactory

2. Depoy Zabbix server

3. Make Jenkins jobs:/n
    a. Create AWS instance and provision tomcat, zabbix agent;/n
    b. Make mvn build and push to artifactory;/n
    c. Deploy project from artifactory to AWS instance;/n

Goals:/n
#. Jenkins server with artifactory and jobs;/n
#. Zabbix server with monitoring group and AWS server in it;/n
#. Site with "Hello world!"./n

