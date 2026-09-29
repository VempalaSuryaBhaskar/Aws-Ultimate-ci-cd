#!/bin/bash
set -e

echo "Stopping node-app container..."

# Stop the container if it is running
docker stop node-app 2>/dev/null || true

# Remove the container if it exists
docker rm node-app 2>/dev/null || true

# Remove the node-app image
docker rmi suryabhaskarvempala/aws-ultimate-ci-cd 2>/dev/null || true

echo "node-app container and image removed."