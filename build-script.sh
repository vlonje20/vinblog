#!/bin/bash

# Set your Docker Hub credentials
DOCKERHUB_USERNAME="vlonje20"
DOCKERHUB_PASSWORD="legion-fibulas-mordacious"

# Set the image details
IMAGE_NAME="vinblog-image"
IMAGE_TAG="vinblog"
DOCKERHUB_REPO="vlonje20/vinblog"

# Login to Docker Hub
echo "Logging in to Docker Hub..."
echo "$DOCKERHUB_PASSWORD" | docker login -u "$DOCKERHUB_USERNAME" --password-stdin

# Build the image
echo "Building the Docker image..."
docker build -t "$IMAGE_NAME":"$IMAGE_TAG" .

# Tag the image with Docker Hub repo
echo "Tagging the image..."
docker tag "$IMAGE_NAME":"$IMAGE_TAG" "$DOCKERHUB_USERNAME"/"$DOCKERHUB_REPO":"$IMAGE_TAG"

# Push the image to Docker Hub
echo "Pushing the image to Docker Hub..."
docker push "$DOCKERHUB_USERNAME"/"$DOCKERHUB_REPO":"$IMAGE_TAG"

echo "Image pushed successfully!"