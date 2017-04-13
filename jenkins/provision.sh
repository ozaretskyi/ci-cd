#!/bin/bash


echo '#!/bin/bash' > jentun.sh
echo  >> jentun.sh
echo 'ssh_srv=123.123.123.123' >> jentun.sh
echo  >> jentun.sh
echo 'ssh -R *:8080:localhost:8080 ec2-user@$ssh_srv -i ~/.ssh/jenkins_rsa -fN' >> jentun.sh
echo 'ssh -R *:8081:localhost:8081 ec2-user@$ssh_srv -i ~/.ssh/jenkins_rsa -fN' >> jentun.sh
echo  >> jentun.sh
sudo chmod 777 jentun.sh
