#!/bin/bash

# Navigate to the application directory
cd /var/www/hello-world-api || { 
  echo "Error: Directory /var/www/hello-world-api does not exist."; 
  exit 1; 
}

# Check if package.json exists
if [ ! -f package.json ]; then
  echo "Error: package.json not found in /var/www/hello-world-api"
  exit 1
fi

# Install dependencies
echo "Installing dependencies..."
npm install

if [ $? -eq 0 ]; then
  echo "Dependencies installed successfully."
else
  echo "Error: Failed to install dependencies."
  exit 1
fi
