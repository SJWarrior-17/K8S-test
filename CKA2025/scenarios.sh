#!/bin/bash

echo -e "\n"
echo "Deploying Q3 resources"
kubectl create -f ./questions/Q3.yml

echo -e "\n"
echo "Deploying Q6 resources"
kubectl create -f ./questions/Q6.yml
kubectl create -f ./questions/application-crd.yaml
kubectl create -f ./questions/applicationset-crd.yaml
kubectl create -f ./questions/appproject-crd.yaml

echo -e "\n"
echo "Deploying Q7 resources"
kubectl create -f ./questions/Q7.yml

echo -e "\n"
echo "Deploying Q8 resources"
kubectl create -f ./questions/Q8.yml

echo -e "\n"
echo "Deploying Q9 resources"
kubectl create -f ./questions/Q9.yml

echo -e "\n"
echo "Deploying Q10 resources"
kubectl create -f ./questions/Q10.yml

echo -e "\n"
echo "Deploying Q9 resources"
kubectl create -f ./questions/Q12.yml

echo -e "\n"
echo "Deploying Q13 resources"
cp ./questions/mariadb-deploy.yaml ~/mariadb-deploy.yaml 
echo "Create a directory in node2 and run the command in node"
echo "Command: mkdir -p /mnt/disks/ssd1"
sleep 30
kubectl create -f ./questions/Q13.yml
