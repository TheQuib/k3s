#!/bin/bash
# Set of commands to be used for initial setup of HA Kubernetes cluster node servers (masters)

# Variables
# Database (MySQL) endpoint server with credentials
# Usage:
#   - 'mysql://[database_user]:[password]@tcp([database_server_ip]:[database_server_port])/[database_name]''
export K3S_DATASTORE_ENDPOINT='mysql://k3s:spindle-trace@tcp(10.175.134.133:3306)/k3s'

# Install k3s on server 1
# Usage:
#   - 'curl -sfL https://get.k3s.io | sh -s - server --node-taint CriticalAddonsOnly=true:NoExecute --tls-san [load_balancer_ip]
curl -sfL https://get.k3s.io | sh -s - server --node-taint CriticalAddonsOnly=true:NoExecute --tls-san 10.175.134.130

# Install k3s on server 2
# Obtain Kubernetes key from first server
#   - sudo cat /var/lib/rancher/k3s/server/node-token
# Same as first server, run the install command, but with the --token flag
#   - 'curl -sfL https://get.k3s.io | sh -s - server --node-taint CriticalAddonsOnly=true:NoExecute --tls-san [load_balancer_ip]
curl -sfL https://get.k3s.io | sh -s - server --node-taint CriticalAddonsOnly=true:NoExecute --tls-san 10.175.134.130 a;slfja;slgha;oifgjha;sodiha;rog