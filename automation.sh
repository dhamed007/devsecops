#!/bin/bash

# Step 1: Run Infrastructure as Code
terraform init
terraform apply --auto-approve

# Step 2: Install Jenkins on Kubernetes
kubectl apply -f jenkins-deployment.yaml
kubectl apply -f jenkins-service.yaml

# Step 3: Create Jenkins Pipeline
# This step should involve Jenkins API calls or CLI commands to create the pipeline from Jenkinsfile in the repo

# Step 4: Execute Jenkins Pipeline
# Trigger Jenkins build for the microservice, either via Jenkins API or CLI

echo "Setup complete!"
