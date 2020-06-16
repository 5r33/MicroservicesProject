#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="nairsreenesh/projectuda"

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl create deployment kprojuda --image=$dockerpath
kubectl run kuberprojectuda\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=kuberprojectuda

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward kuberprojectuda 8000:80
