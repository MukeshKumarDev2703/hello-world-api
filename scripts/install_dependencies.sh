#!/bin/bash
echo "Current directory: $(pwd)"
echo "Listing contents of deployment directory:"
ls -la /var/www/hello-world-api

if [[ ! -f /var/www/hello-world-api/package.json ]]; then
  echo "Error: package.json not found!"
  exit 1
fi

# Proceed with installing dependencies
cd /var/www/hello-world-api
npm install
