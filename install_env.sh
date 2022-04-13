echo "Start to install dependencies, current time is:"  `date`
sudo yum -y update
cd /home/ec2-user/

# CodeDeploy
sudo yum -y update
sudo yum install -y ruby
sudo yum install -y wget
sudo CODEDEPLOY_BIN="/opt/codedeploy-agent/bin/codedeploy-agent"
sudo $CODEDEPLOY_BIN stop
yum erase codedeploy-agent -y
cd /home/ec2-user
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent status
sudo service codedeploy-agent start
sudo service codedeploy-agent status

# CloudWatch
sudo yum install -y amazon-cloudwatch-agent
sudo systemctl enable amazon-cloudwatch-agent.service
sudo systemctl start amazon-cloudwatch-agent.service

# Python dependencies
sudo yum install -y python3
sudo yum install -y python3-pip
sudo yum install -y unzip
unzip webservice.zip
cd /home/ec2-user/webservice
sudo pip3 install -r requirements.txt
cd /home/ec2-user/

# Mysql dependencies
sudo yum install -y mariadb-server
sudo systemctl enable mariadb.service
sudo systemctl start mariadb.service
