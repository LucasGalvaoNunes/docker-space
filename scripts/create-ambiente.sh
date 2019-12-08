#!/bin/bash

ROOT=$1

printf "\n\n"
printf "====================================="
printf "\n"
printf "DEPLOYING HELPERS CONTAINERS (Portainer and Traefik) ..."
printf "\n"
cd $ROOT/helpers/traefik
docker stack deploy -c service.yml helpers
cd $ROOT/helpers/portainer
docker stack deploy -c service.yml helpers
printf "\n\n"
printf " ------- OK - HELPERS CONTAINERS INSTALLED"
printf "\n"
printf "DEPLOYING DATABASES CONTAINERS (MySQL) ..."
printf "\n"
cd $ROOT/db/mysql
docker stack deploy -c service.yml database
printf "\n\n"
printf " ------- OK - DATABASES CONTAINERS INSTALLED"
printf "\n"
printf "====================================="
printf "\n\n"