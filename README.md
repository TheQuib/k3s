# Kubernetes Configurations
A bunch of configurations for getting Kubernetes up and running on 3+ Ubuntu Linux servers using K3s from Rancher.
<br>
Documentation for the cluster can be found under the [cluster directory](cluster/README.md)

<br>

## Useful commands

### Allow user(s) to interface with Docker without sudo

```bash
#Should already exist after installing docker
sudo groupadd docker

sudo usermod -aG docker $USER

#Update docker group data
newgrp docker
```