#!/bin/bash
# Set of commands to be used for initial setup of HA Kubernetes cluster agent servers

# Requires NGINX Reverse Proxy (Load Balancer) to be set up already
# Requires obtaining of kubernetes token using the following the command (can also be found in /README.md):
#   - sudo cat /var/lib/rancher/k3s/server/node-token
curl -sfL https://get.k3s.io | K3S_URL=[PROXY_ADDRESS]:6443 K3S_TOKEN=[KUBERNETES_TOKEN]::server:7a0ebf9dc9c4b9ca9eef619d8624dc88 sh -