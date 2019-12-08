#!/bin/bash
printf "\n\n"
printf "====================================="
printf "\n"
printf "DISABLING SERVICES ..."
printf "\n"
sudo systemctl stop apache2 
sudo systemctl disable apache2
printf "\n\n"
printf " ------- OK - APACHE2 DISABLED"
printf "\n"
sudo systemctl stop mysql 
sudo systemctl disable mysql
printf "\n\n"
printf " ------- OK - MYSQL DISABLED"
printf "\n"
printf "====================================="
printf "\n\n"