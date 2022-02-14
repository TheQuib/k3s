# Kubernetes Configurations
A bunch of configurations for getting Kubernetes up and running on 3+ Ubuntu Linux servers using K3s from Rancher.

<br>

# My Environment

## Servers
In my environment, I'm running a total of 8 virtual machines (IP addresses for documentation reference):
 - k3sServer1 (10.175.134.131)
 - k3sServer2 (10.175.134.132)
 - k3sAgent1 (10.175.134.141)
 - k3sAgent2 (10.175.134.142)
 - k3sAgent3 (10.175.134.143)
 - KubeDB (10.175.134.133)
 - k3sLoadBalancer (10.175.134.134)
 - k3sDev (10.175.134.139)

## Roles
 - k3s Servers
   - Denoted as `masters` by Kubernetes
   - Run the kubernetes API, which drives the worker agents
   - Load Balanced
   - Configs found in [Cluster/k3s-server-setup](/Cluster/k3s-server-setup.sh)
 - k3s Agents (workers)
   - Denoted as `workers` by Kubernetes
   - Run workloads called `Pods`, identical instances of the same container
   - Configs found in [Cluster/k3s-agent-setup.sh](/Cluster/k3s-agent-setup.sh)
 - k3s Database
   - Provides database information for the cluster
   - Each master server communicates with this
   - Agents communicate to the masters only
 - Load Balancer
   - Load balances services for communication
     - For both the masters and services to be accessed
   - Configs found in [LoadBalancer](/LoadBalancer)
 - Dev Machine
   - A machine with Kubectl installed,
   - Downloaded `kubeconfig` from a master server
     - See [Dev machine requirements](#dev-machine-requirements)


# Dev Machine Requirements
To deploy workloads, you will need a separate client machine with:
 - Install `kubectl`
   - `curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add`
   - `sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"`
   - `sudo apt-get install kubeadm kubelet kubectl`
   - `sudo apt-mark hold kubeadm kubelet kubectl`
   - Verify installation with `kubeadm version`
 - Kubeconfig from Master server
   - Connect to master server and run `sudo cat /etc/rancher/k3s/k3s.yaml`
   - Save these contents to `~/.kube/config`