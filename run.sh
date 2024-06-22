#!/bin/bash
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
