#!/bin/bash
echo "Deploying K8S cluster."
echo -e "\n"
kubeadm init --apiserver-advertise-address $(hostname -i) --pod-network-cidr 10.5.0.0/16
sleep 20
echo "Please copy join code"
echo -e "\n"
echo "Installing Cluster networking."
kubectl apply -f https://raw.githubusercontent.com/cloudnativelabs/kube-router/master/daemonset/kubeadm-kuberouter.yaml
echo -e "\n"
echo "Updating Yum package managaer."
yum --disablerepo=kubernetes
yum-config-manager --disable kubernetes
echo "Docker installation"
echo -e "\n"
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl start docker
echo -e "\n"
echo "Testing Docker"
docker version

helm_install() {
    chmod 777 ./helm/install.sh
    cd helm
    . "./install.sh"  
}

helm_install
