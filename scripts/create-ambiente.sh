#!/bin/bash

ROOT=$1
docker_database() {
    cd $ROOT/db/mysql
    docker stack deploy -c service.yml database
    if [ $? -eq 0 ]; then
        return 0
    else
        return 1
    fi
}

docker_helpers() {
    ## INSTALL HELPERS
    cd $ROOT/helpers/portainer
    docker stack deploy -c service.yml helpers
    if [ $? -eq 0 ]; then
        cd $ROOT/helpers/traefik
        docker stack deploy -c service.yml helpers
        if [ $? -eq 0 ]; then
            return 0
        else
            return 1
        fi
    else
        return 2
    fi
}
printf "\n\n"
printf "====================================="
printf "\n"
printf "DEPLOYING DATABASES CONTAINERS (MySQL) ..."
printf "\n"
docker_database
printf "\n\n"
printf " ------- OK - DATABASES CONTAINERS INSTALLED"
printf "\n"
printf "DEPLOYING HELPERS CONTAINERS (Portainer and Traefik) ..."
printf "\n"
docker_helpers
printf "\n\n"
printf " ------- OK - HELPERS CONTAINERS INSTALLED"
printf "\n"
printf "====================================="
printf "\n\n"