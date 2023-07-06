#!/bin/bash

# Navigate to the deploy directory
cd /deploy

# Login to ECR
aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 592532275118.dkr.ecr.eu-central-1.amazonaws.com

# Stop the running stack (if any) then pull and run the current compose stack
docker-compose down
docker-compose pull
docker-compose up -d