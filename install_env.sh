echo "Start to install dependencies, current time is:"  `date`
sudo yum -y update
cd /home/ec2-user/

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
