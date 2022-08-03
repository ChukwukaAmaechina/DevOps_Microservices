#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath your docker ID/path
dockerpath=chukwuka04/ml-image:latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag ml-image:latest $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath