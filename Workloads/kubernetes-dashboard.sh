#!/bin/bash

# Deploys "Kubernetes Dashboard" in a k3s / k8s environment
# Source code can be found here: https://github.com/kubernetes/dashboard
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.0/aio/deploy/recommended.yaml