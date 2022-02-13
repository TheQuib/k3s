# Setting up a Kubernetes cluster
The bash shell scripts in this directory can be run to create and add nodes/agents to a Kubernetes cluster.

These are relatively self documented.

## Order of operations
1. [k3s-server-setup.sh](/k3s-server-setup.sh)
1. [k3s-agent-setup.sh](/k3s-agent-setup.sh)
1. [k3s-server-helm-setup.sh](/k3s-server-helm-setup.sh)

## Useful commands
1. Get Kubernetes token (from master server only):

`sudo cat /var/lib/rancher/k3s/server/node-token`

1. Uninstall k3s from master server
```bash
cd /usr/local/bin
./k3s-uninstall.sh
```

1. Uninstall k3s from node
```bash
cd /usr/local/bin
./k3s-agent-uninstall.sh
```

## Important environment variables (server type they belong to)
 - `K3S_DATASTORE_ENDPOINT` (Master)
 - `K3S_URL` (Agent)
 - `K3S_TOKEN` (Agent)