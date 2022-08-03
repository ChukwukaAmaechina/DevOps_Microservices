#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=chukwuka04/ml-image:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment ml-image --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/ml-image 8000:80 

