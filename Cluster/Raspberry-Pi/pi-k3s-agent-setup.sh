# Requires obtaining of kubernetes token using the following the command (can also be found in /README.md):
#   - sudo cat /var/lib/rancher/k3s/server/node-token
curl -sfL https://get.k3s.io | K3S_TOKEN="YOURK3STOKEN" K3S_URL="https://[your server]:6443" K3S_NODE_NAME="yourNodeName" sh -