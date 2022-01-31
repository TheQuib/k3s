#!/bin/bash
# Set of commands to be used to install Helm to a kubernetes node
# Helm is a sort of package manager for Kubernetes

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod +x get_helm.sh
./get_helm.sh

# Add Rancher repository to Helm
helm repo add rancher-stable https://releases.rancher.com/server-charts/stable
helm repo update

# Create namespace for Rancher. You can get a list of namespaces using
# kubectl get namespace
sudo kubectl create namespace cattle-system
