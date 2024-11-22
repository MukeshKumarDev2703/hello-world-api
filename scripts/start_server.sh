#!/bin/bash
# Make sure the scripts are executable
chmod +x /var/www/hello-world-api/scripts/install_dependencies.sh
chmod +x /var/www/hhello-world-api/scripts/start_server.sh

# Stop any existing application instance
pm2 stop all || true

# Start the app using PM2
pm2 start /var/www/hello-world-api/app.js --name nodeapplication
