# Workloads

## What is this?
A small set of sample workloads that can be deployed quickly and easily to test the new Kubernetes cluster

## Requirements
 - Working Kubernetes cluster
 - A dev machine (Kubeconfig downloaded and Kubectl installed)

<br>

## kubernetes-dashboard
Make sure you create the Yaml files that are in here, then run the commands in the file [kubernetes-dashboard.sh](/kubernetes-dashboard/kubernetes-dashboard.sh)

### Access the dashboard
Once `kubectl proxy` has been run, you can access the dashboard by navigating to the following url:
 - [http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/](http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/)

 <br>

 ## nginx-test
 Make sure you create the Yaml file [nginx-test.yaml](/nginx-test/nginx-test.yaml), then run the commands in the file [nginx-test.sh](/nginx-test/nginx-test.sh)