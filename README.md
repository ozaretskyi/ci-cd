# ci-cd
ci-cd autodeployment
Tasks:

1. Deploy and provision Jenkins server with artifactory

2. Depoy Zabbix server

3. Make Jenkins jobs:
	a. Create AWS instance and provision tomcat, zabbix agent
	b. Make mvn build and push to artifactory
	c. Deploy project from artifactory to AWS instance

Goals:
1. Jenkins server with artifactory and jobs
2. Zabbix server with monitoring group and AWS server in it
3. Site with "Hello world!"


