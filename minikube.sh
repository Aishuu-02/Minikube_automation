#! /bin/bash

#to update and upgrade the system you are working on..
sudo apt-get update -y
sudo apt-get upgrade -y

#to install curl 
sudo apt-get install curl
sudo apt-get install apt-transport-https

#install virtual-box on ubuntu
sudo apt install virtualbox virtualbox-ext-pack

#install minikube
sudo wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

#copy the minikube downloaded to local storage
sudo cp minikube-linux-amd64 /usr/local/bin/minikube

#to make minikube file executable
sudo chmod 755 /usr/local/bin/minikube

#to check minikube installed 
minikube version

#install kubectl
sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

#make binary executable
sudo chmod +x ./kubectl

#move the binary into local path
sudo mv ./kubectl /usr/local/bin/kubectl
echo "moved kubectl to local path"

#checking kubernetes installation
kubectl version -o json

#starting minikube
minikube start
minikube ssh
