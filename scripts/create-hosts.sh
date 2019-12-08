#!/bin/bash
printf "\n\n"
printf "====================================="
printf "\n"
printf "CREATING HOSTS FOR THE NEW CONTAINERS ..."
printf "\n"

echo "127.0.0.1         mysql.localhost.com" >> /etc/hosts
echo "127.0.0.1         portainer.localhost.com" >> /etc/hosts
echo "127.0.0.1         traefik.localhost.com" >> /etc/hosts
printf "\n\n"

printf " ------- OK - NEW HOSTS ADDED"
printf "\n"
printf " ------- mysql.localhost.com"
printf "\n"
printf " ------- portainer.localhost.com"
printf "\n"
printf " ------- traefik.localhost.com"
printf "\n"
printf "====================================="
printf "\n\n"