#!/bin/bash
cd /home/ec2-user/hello-world-api
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
npm install
npm install express
