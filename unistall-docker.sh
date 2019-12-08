#!/bin/bash

prompt_confirm() {
  while true; do
    read -r -n 1 -p "${1:-Continue?} [y/n]: " REPLY
    case $REPLY in
    [yY])
      echo
      return 0
      ;;
    [nN])
      echo
      return 1
      ;;
    *) printf " \033[31m %s \n\033[0m" "invalid input" ;;
    esac
  done
}

printf "\n\n"
printf "====================================="
printf "\n"
printf "REMOVING DOCKER COMPLETE ..."
printf "\n"
sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce docker-ce-cli

sudo groupdel docker

sudo rm -rf /var/lib/docker /etc/docker
sudo rm /etc/apparmor.d/docker
sudo rm -rf /var/run/docker.sock
sudo rm -rf /usr/local/bin/docker-compose
sudo rm -rf /etc/docker
sudo rm -rf ~/.docker

printf "\n\n"
printf " ------- OK - DOCKER AS UNISTALLED"
printf "\n"
printf "====================================="
printf "\n\n"

prompt_confirm "You need to restart your computer, restart now?"
if [ $? -eq 0 ]; then
  /sbin/shutdown -r now
fi
