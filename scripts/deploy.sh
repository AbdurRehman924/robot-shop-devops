#!/bin/bash

set -e

echo "🚀 Deploying DigitalOcean Infrastructure..."

cd terraform

# Initialize Terraform
terraform init

# Plan deployment
terraform plan

# Apply configuration
terraform apply -auto-approve

# Configure kubectl
export KUBECONFIG=$(pwd)/kubeconfig

# Test cluster connection
echo "🔍 Testing cluster connection..."
kubectl get nodes

echo "✅ Infrastructure deployed successfully!"
echo "📋 Cluster info:"
kubectl cluster-info

echo "🔧 To use kubectl:"
echo "export KUBECONFIG=$(pwd)/kubeconfig"
