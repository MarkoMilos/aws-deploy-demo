#!/bin/bash

# Navigate to the deployment directory
cd /deploy

# Login to ECR
aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 592532275118.dkr.ecr.eu-central-1.amazonaws.com

# Pull and run the latest image
docker-compose pull
docker-compose up -d