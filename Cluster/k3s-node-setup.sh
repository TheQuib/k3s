#!/bin/bash
# Set of commands to be used for initial setup of HA Kubernetes cluster node servers (masters)

# Variables
# Database (MySQL) endpoint server with credentials
# Usage:
#   'mysql://[database_user]:[password]@tcp([database_server_ip]:[database_server_port])/[database_name]''
export K3S_DATASTORE_ENDPOINT='mysql://k3s:spindle-trace@tcp(10.175.134.133:3306)/k3s'

# Install k3s
# Usage:
#   'curl -sfL https://get.k3s.io | sh -s - server --node-taint CriticalAddonsOnly=true:NoExecute --tls-san [load_balancer_ip]
curl -sfL https://get.k3s.io | sh -s - server --node-taint CriticalAddonsOnly=true:NoExecute --tls-san 10.175.134.130