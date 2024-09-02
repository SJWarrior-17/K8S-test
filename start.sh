#!/bin/bash

# Menu Item

main_menu()
{

while :
do
	clear
	echo " "
	echo "--------------------------------------"
	echo " K8S Playground Required Installation "
	echo "--------------------------------------"
	echo "[1] Updating Yum Installer"
	echo "[2] Docker installation"
	echo "[3] Helm Installation"
	echo "[4] Velero Installation"
	echo "[5] Exit"
	echo "====================================="
	echo -e "Enter your menu choice [1-5] [Default : 1]: \c "
	read m_menu
	
	case "$m_menu" in

		1) option_1;;
		2) option_2;;
		3) option_3;;
		4) option_4;;
		5) exit 0;;
                "") option_1;;
		*) echo -e "\nOpps!!! Please Select Correct Choice";
		   echo "Press ENTER To Continue..." ; read ;;
	esac
done
}

option_1()
{
  echo "Updating Yum package managaer"
  #Commands
  yum --disablerepo=kubernetes
  yum-config-manager --disable kubernetes
  echo -e "\n"
  echo -e "\nPress ENTER To Continue..."
    read
	return
}

option_2()
{
	echo "Installing Docker"
  #Commands
  yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
  systemctl start docker
  echo -e "\n"
  echo "Docker Installation Validation"
  echo -e "\n"
  echo "Testing Docker"
	echo -e "\nPress ENTER To Continue..."
    read
	return
}

option_3()
{
	echo "Installing Docker"
  #Commands
    chmod 777 ./helm/install.sh
    cd helm
    . "./install.sh"  
	echo -e "\nPress ENTER To Continue..."
    read
	return
}

option_4()
{
	echo "Installing Velero"
  echo -e "\n"
  echo "Deploying MinIO for S3 Object Storage"
  #Commands
  kubectl apply -f ./velero/minio-deployment.yaml
  echo -e "\n"
  echo "Deploying Velero"
  #Commands
  
	echo -e "\nPress ENTER To Continue..."
    read
	return
}
option_5()
{
	echo "option 5"
	exit 0
}

main_menu
