#!/bin/bash
git  clone https://github.com/simranpreet0327/hello-world-api.git
cd /home/ec2-user/hello-world-api
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo yum install -y nodejs

sudo npm install
sudo npm install express
