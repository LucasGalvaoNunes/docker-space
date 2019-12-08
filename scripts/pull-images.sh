#!/bin/bash

printf "\n\n"
printf "====================================="
printf "\n"
printf "INSTALLING DOCKER IMAGES ..."
printf "\n"
docker pull traefik:v1.7 && docker pull portainer/portainer:latest && docker pull mysql:5.7 && docker pull richarvey/nginx-php-fpm:latest
printf "\n\n"
printf " ------- OK - IMAGES INSTALLED"
printf "\n"
printf "====================================="
printf "\n\n"