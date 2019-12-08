#!/bin/bash
printf "\n\n"
printf "====================================="
printf "\n"
printf "CREATING HOSTS FOR THE NEW CONTAINERS ..."
printf "\n"

sudo echo "127.0.0.1         mysql.localhost" >> /etc/hosts
sudo echo "127.0.0.1         portainer.localhost" >> /etc/hosts
sudo echo "127.0.0.1         traefik.localhost" >> /etc/hosts
printf "\n\n"

printf " ------- OK - NEW HOSTS ADDED"
printf "\n"
printf " ------- mysql.localhost"
printf "\n"
printf " ------- portainer.localhost"
printf "\n"
printf " ------- traefik.localhost"
printf "\n"
printf "====================================="
printf "\n\n"