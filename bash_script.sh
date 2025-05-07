#!/bin/bash

echo "Choose server mode:"
echo "1. Development"
echo "2. Production"
read -r mode

APP_DIR="/path/to/your/app"

if [ "$mode" == "1" ]; then
  export NODE_ENV=development
  CMD="node server.js"
elif [ "$mode" == "2" ]; then
  export NODE_ENV=production
  CMD="node server.js"
else
  echo "Invalid input. Exiting."
  exit 1
fi

cd "$APP_DIR" || exit 1
eval "$CMD"
