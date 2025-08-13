#!/bin/bash

prereq() {
    alias k=kubectl
    complete -o default -F __start_kubectl k
}

prereq

echo -e "\n"
echo "Deploying Q3 resources"
k create -f ./questions/Q3.yml

echo -e "\n"
echo "Deploying Q6 resources"
k create -f ./questions/Q6.yml
k create -f ./questions/application-crd.yaml
k create -f ./questions/applicationset-crd.yaml
k create -f ./questions/appproject-crd.yaml

echo -e "\n"
echo "Deploying Q7 resources"
k create -f ./questions/Q7.yml

echo -e "\n"
echo "Deploying Q8 resources"
k create -f ./questions/Q8.yml

echo -e "\n"
echo "Deploying Q9 resources"
k create -f ./questions/Q9.yml

echo -e "\n"
echo "Deploying Q10 resources"
k create -f ./questions/Q10.yml

echo -e "\n"
echo "Deploying Q9 resources"
k create -f ./questions/Q12.yml

echo -e "\n"
echo "Deploying Q13 resources"
echo "Create a directory in node2 and run the command in node"
echo "Command: mkdir -p /mnt/disks/ssd1"
sleep 30
k create -f ./questions/Q13.yml
