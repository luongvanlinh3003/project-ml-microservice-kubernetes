#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=vanlinh303/myproject1:lastest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run myproject1 --image=vanlinh303/myproject1 --port=80 --labels app=myproject1

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward myproject1 8080:80
