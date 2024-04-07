#!/bin/bash

sudo apt-get update
sudo apt-get install virtualbox -y

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 
sudo install minikube-linux-amd64 /usr/local/bin/minikube 

minikube start --driver=virtualbox --network-plugin=cni --cni=calico --memory 4096 --cpus 4

echo "alias kubectl=\"minikube kubectl --\"" >> ~/.bashrc
. ~/.bashrc

rm -f minikube-linux-amd64
