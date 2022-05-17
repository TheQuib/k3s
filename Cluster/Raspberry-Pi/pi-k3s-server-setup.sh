# Update repositories and upgrade all packages
sudo apt update
sudo apt upgrade -y

# Install iptables
sudo apt install iptables -y

# Do some iptables magic
sudo iptables -F

# Install k3s as a master
curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" sh -s -