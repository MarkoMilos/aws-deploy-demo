#!/bin/bash

# Navigate to the deploy directory
cd /deploy

# Pull the application secrets/variables from AWS SSM Parameter Store and override the app-variables.env file
aws ssm get-parameter --name "/nodeapp/prod/env-file" --with-decryption --query "Parameter.Value" --output text > /deploy/app-variables.env