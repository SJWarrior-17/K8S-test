#!/bin/bash
echo "helm installation"
echo -e "\n"
echo "Extracting the helm binaries"
echo -e "\n"
tar -zxvf helm-v3.15.2-linux-amd64.tar.gz
echo -e "\n"
echo "Moving helm binaries to the destination"
echo -e "\n"
mv linux-amd64/helm /usr/local/bin/helm
echo -e "\n"
echo "Testing helm"
helm help
