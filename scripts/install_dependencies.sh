#!/bin/bash

# Print the current working directory
echo "Current directory: $(pwd)"

# List the contents of the /var/www/hello-world-api directory to verify the files are there
echo "Listing contents of /var/www/hello-world-api:"
ls -l /var/www/hello-world-api

# Navigate to the application directory
cd /var/www/hello-world-api || { echo "Error: Unable to cd into /var/www/hello-world-api"; exit 1; }

# Check if package.json exists
if [ ! -f package.json ]; then
  echo "Error: package.json not found in /var/www/hello-world-api"
  exit 1
fi

# Install dependencies
echo "Installing dependencies..."
npm install

# Check if npm install was successful
if [ $? -eq 0 ]; then
  echo "Dependencies installed successfully."
else
  echo "Error: Failed to install dependencies."
  exit 1
fi
