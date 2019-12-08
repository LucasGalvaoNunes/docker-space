#!/bin/bash
printf "\n\n"
printf "====================================="
printf "\n"
printf "INSTALLING DOCKER ..."
printf "\n"
#Dependeces to install docker.
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

## Add keys of docker for ubuntu SO
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

## Add repository of docker to ubuntu
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

## Update list
sudo apt-get update

## Install docker-ce and your services
sudo apt-get install docker-ce docker-ce-cli containerd.io

## Enable docker services in startup
sudo systemctl enable docker.service

## Add yout user to a docker group
sudo usermod -aG docker $USER

## Add permission to folders of docker for your user
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "$HOME/.docker" -R

printf "\n\n"
printf " ------- OK - DOCKER INSTALLED"
printf "\n"
printf "INIT DOCKER SWARM ..."
printf "\n"


