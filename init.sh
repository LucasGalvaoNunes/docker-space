#!/bin/bash

ROOT_FOLDER=$(pwd)

IMAGES_DOCKER="Traefik, Portainer, NginxPHP"

STOP_SERVICES_SCRIPT="${ROOT_FOLDER}/scripts/stop-services.sh"
DOCKER_INSTALL_SCRIPT="${ROOT_FOLDER}/scripts/install-docker.sh"
LAZYDOCKER_INSTALL_SCRIPT="${ROOT_FOLDER}/scripts/install-lazydocker.sh"
DOCKER_IMAGES_SCRIPT="${ROOT_FOLDER}/scripts/pull-images.sh"
CREATE_AMBIENTE_SCRIPT="${ROOT_FOLDER}/scripts/create-ambiente.sh"
CREATE_HOSTS_SCRIPT="${ROOT_FOLDER}/scripts/create-hosts.sh"

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

prompt_confirm "Disable auto start service like Apache and Mysql?"
if [ $? -eq 0 ]; then
  bash "$STOP_SERVICES_SCRIPT"
fi

prompt_confirm "Intall docker and docker swarm?"
if [ $? -eq 0 ]; then
  bash "$DOCKER_INSTALL_SCRIPT"
fi

prompt_confirm "Pull the (${IMAGES_DOCKER}) images of docker hub?"
if [ $? -eq 0 ]; then
  bash "$DOCKER_IMAGES_SCRIPT"
fi

prompt_confirm "Create default services, database and helpers?"
if [ $? -eq 0 ]; then
  bash "$CREATE_AMBIENTE_SCRIPT" "${ROOT_FOLDER}"
fi

prompt_confirm "Create hosts for default containers?"
if [ $? -eq 0 ]; then
  bash "$CREATE_HOSTS_SCRIPT"
fi

printf "\n\n"
printf "I recomend to you install Lazydocker to manage yours containers :D"
printf "\n"
printf "Lazydocker is a simple terminal UI for both docker and docker-compose, written in Go with the gocui library."
printf "\n"
prompt_confirm "Do you wanted to install LazyDocker?"
if [ $? -eq 0 ]; then
  bash "$LAZYDOCKER_INSTALL_SCRIPT"
fi

printf "\n\n"
printf "====================================="
printf "\n\n"
printf "THE NEXT STEP IS CREATE A DOCKER CONTAINER FOR YOU APPLICATION, READ THE NEXT STEP IN DOCUMENTATION!"
printf "\n\n"
printf "====================================="
printf "\n\n"