#!/bin/bash

ROOT=$1




printf "\n\n"
printf "====================================="
printf "\n"
printf " CREATING SWARM PRE CONFIG"
printf "\n"
sudo apt install net-tools
## Ger default interface to add in a swarm
INTERFACE=$(route | grep '^default' | grep -o '[^ ]*$')
docker swarm init --advertise-addr $INTERFACE
docker network create -d overlay webproxy
printf "\n\n"
printf " ------- OK - DOCKER SWARM INSTALLED"
printf "\n"
printf "====================================="
printf "\n\n"

printf "DEPLOYING HELPERS CONTAINERS (Portainer and Traefik) ..."
printf "\n"
cd $ROOT/helpers/traefik
docker stack deploy -c service.yml help
cd $ROOT/helpers/portainer
docker stack deploy -c service.yml help
printf "\n\n"
printf " ------- OK - HELPERS CONTAINERS INSTALLED"
printf "\n"
printf "DEPLOYING DATABASES CONTAINERS (MySQL) ..."
printf "\n"
cd $ROOT/db/mysql
docker stack deploy -c service.yml db
printf "\n\n"
printf " ------- OK - DATABASES CONTAINERS INSTALLED"
printf "\n"
printf "====================================="
printf "\n\n"