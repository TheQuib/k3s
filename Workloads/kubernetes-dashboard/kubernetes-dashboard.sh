#!/bin/bash

# THIS SHOULD ALL BE DONE ON A DEV MACHINE

# Deploys "Kubernetes Dashboard" in a k3s / k8s environment
# Source code can be found here: https://github.com/kubernetes/dashboard
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.0/aio/deploy/recommended.yaml

# WARNING: The following commands require the following files (and make sure you and they are in the same directory):
#   - dashboard.admin-user-role.yml
#   - dashboard-admin-user.yml

# Create admin user for the dashboard
kubectl create -f dashboard.admin-user.yml -f dashboard.admin-user-role.yml

# Get the kubernetes dashboard token
kubectl -n kubernetes-dashboard describe secret admin-user-token | grep ^token

# Start kubectl proxy
kubectl proxy