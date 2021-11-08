#!/usr/bin/env bash

PROJECT_NAME="current-exercise"
DROPLET_URL="138.68.90.64"

echo "##############################"
echo "Building the frontend project"
echo "##############################"
npm run build

echo "##############################"
echo "Deploying Frontend project..."
echo "##############################"

scp -r ./build/* root@$DROPLET_URL:/var/www/$PROJECT_NAME

echo
echo
echo
echo "Done. Closing window."

sleep 3
