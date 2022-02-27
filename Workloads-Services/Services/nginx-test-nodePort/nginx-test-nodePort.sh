#!/bin/bash

# THIS SHOULD ALL BE DONE ON A DEV MACHINE

# WARNING: Make sure you have the deployment .yaml file in your current directory (or create one)

# Apply the configuration
kubectl apply -f nginx-test-nodePort.yaml

# You can then view the current running services
kubectl get services
