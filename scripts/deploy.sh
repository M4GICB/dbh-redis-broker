#!/bin/bash

# Load environment variables
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
else
    echo ".env file not found!"
    exit 1
fi

echo "Deploying Redis broker..."
docker compose --env-file .env pull
docker compose --env-file .env down
docker compose --env-file .env up -d

echo "Redis broker deployed successfully:"
docker ps | grep $REDIS_CONTAINER_NAME
