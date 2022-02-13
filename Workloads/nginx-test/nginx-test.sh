#!/bin/bash

# THIS SHOULD ALL BE DONE ON A DEV MACHINE

# WARNING: Make sure you have the deployment .yaml file in your current directory (or create one)

kubectl deploy -f nginx-test.yaml

# You can then view the pods (or check the dashboard/pods page)
# This will take a few seconds to pull the image and start the container
kubectl get pods
# Note the name of the running pod, we'll call this $POD_NAME

# To test and check to make sure it is working, run the following command for the pod:
kubectl exec -it $POD_NAME curl localhost

# You can scale this deployment as well, by running:
kubectl scale --replicas=2 deploy/nginx-test
# This can be scaled as much as needed, ex:
kubectl scale --replicas=20 deploy/mysite

# Get the status of the deployment as a whole:
kubectl get deployment nginx-test

# Delete the deployment:
kubectl delete deploy nginx-test

# If you check the kubernetes dashboard again, the pods should be gone