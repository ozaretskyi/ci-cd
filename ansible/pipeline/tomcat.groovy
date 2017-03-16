/*
  Tomcat Pipeline DSL script to provision Tomcat server

  Executed steps:
  1. Install need components
  2. Start Tomcat server

 */

node ('master') {
    wrap([$class: 'AnsiColorBuildWrapper', 'colorMapName': 'XTerm']) {
        timestamps {
            build '/Bootstrap/GIT'
            dir("../workspace@script/ansible") {

                stage name: "Refresh inventory cache"
                sh 'inventory/ec2.py --refresh-cache'

                stage name: 'Setup and configure Tomcat'
                ansiblePlaybook colorized: true,
                        inventory: 'inventory/ec2.py',
                        limit: "$NEW_HOST_ID",
                        playbook: 'tomcat.yml',
                        sudoUser: null,
                        extras: "-u centos --private-key=~/.ssh/id_rsa"

            }


        }
    }
}
