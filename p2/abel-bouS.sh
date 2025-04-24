#!/bin/bash

apt-get install -y curl
export  K3S_KUBECONFIG_MODE="644"
export INSTALL_K3S_EXEC="server --node-ip=192.168.56.110"
curl -sfL https://get.k3s.io  | sh -
# sudo cat /var/lib/rancher/k3s/server/node-token > /vagrant/node-token