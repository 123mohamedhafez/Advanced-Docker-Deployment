#!/bin/bash

IMAGE_NAME="advanced-nginx-app"
CONTAINER_NAME="my-production-web"
PORT="8080"

echo "========================================="
echo " Starting Docker Deployment Process..."
echo "========================================="

echo "[1/4] Stopping and removing old container if exists..."
sudo docker stop $CONTAINER_NAME 2>/dev/null
sudo docker rm $CONTAINER_NAME 2>/dev/null

echo "[2/4] Building the new Docker image..."
sudo docker build -t $IMAGE_NAME .

echo "[3/4] Running the new container..."
sudo docker run -d \
  -p $PORT:80 \
  --name $CONTAINER_NAME \
  $IMAGE_NAME

echo "[4/4] Deployment Successful! Container status:"
sudo docker ps | grep $CONTAINER_NAME

echo "========================================="
echo " App is running at: http://localhost:$PORT "
echo "========================================="
