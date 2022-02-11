# Setting up a Kubernetes cluster
The bash shell scripts in this directory can be run to create and add nodes/agents to a Kubernetes cluster.

These are relatively self documented.

## Order of operations
1. [k3s-server-setup.sh](/k3s-server-setup.sh)
1. [k3s-agent-setup.sh](/k3s-agent-setup.sh)
1. [k3s-server-helm-setup.sh](/k3s-server-helm-setup.sh)

## Useful commands
Get Kubernetes token (from master server):
  - `sudo cat /var/lib/rancher/k3s/server/node-token`