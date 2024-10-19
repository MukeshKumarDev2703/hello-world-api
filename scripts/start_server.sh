#!/bin/bash
cd /home/ec2-user/hello-world-api
sudo fuser -k 80/tcp

# Start the new version of the application
nohup node app.js > app.log 2>&1 &
