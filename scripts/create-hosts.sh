#!/bin/bash
printf "\n\n"
printf "====================================="
printf "\n"
printf "CREATING HOSTS FOR THE NEW CONTAINERS ..."
printf "\n"

echo '127.0.0.1       portainer.local.com' | sudo tee -a /etc/hosts
echo '127.0.0.1       mysql.local.com' | sudo tee -a /etc/hosts
echo '127.0.0.1       traefik.local.com' | sudo tee -a /etc/hosts

printf "\n\n"
printf " ------- OK - NEW HOSTS ADDED"
printf "\n"
printf " ------- mysql.local.com"
printf "\n"
printf " ------- portainer.local.com"
printf "\n"
printf " ------- traefik.local.com"
printf "\n"
printf "====================================="
printf "\n\n"