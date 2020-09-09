#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=udacityproj

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username ranjitklive
docker tag udacityproj ranjitklive/udacityproj:v1pro3
# Step 3:
# Push image to a docker repository
docker push ranjitklive/udacityproj:v1pro3
