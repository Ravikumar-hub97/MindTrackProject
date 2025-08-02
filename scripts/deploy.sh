#!/bin/bash

echo "Setting kubeconfig for EKS"
aws eks update-kubeconfig --region us-east-1 --name brain-tasks-cluster

echo "Applying Kubernetes manifests"
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
