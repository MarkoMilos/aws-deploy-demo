#!/bin/bash

# Pull the .env file from AWS SSM Parameter Store and save it to the /deploy directory
aws ssm get-parameter --name "node-app-env" --with-decryption --query "Parameter.Value" --output text > /deploy/.env