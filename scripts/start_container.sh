#!/bin/bash
set -e

# Pull the latest Docker image from Docker Hub
echo "Pulling latest node-app image..."
docker pull suryabhaskarvempala/aws-ultimate-ci-cd:latest

# Run the Docker image as a container
echo "Starting node-app container..."
docker run -d \
  --name node-app \
  -p 3000:3000 \
 suryabhaskarvempala/aws-ultimate-ci-cd:latest

echo "node-app started on port 3000"