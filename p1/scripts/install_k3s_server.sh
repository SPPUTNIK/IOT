#!/bin/bash

sudo apt-get update

# Install K3s as server
curl -sfL https://get.k3s.io | sh -
sudo chmod 644 /etc/rancher/k3s/k3s.yaml
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml


# Export token to make it accessible to the worker node
sudo cat /var/lib/rancher/k3s/server/node-token > /vagrant/scripts/node-token.txt
