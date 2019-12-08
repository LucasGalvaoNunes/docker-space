# Docker Space
This is a workspace fully configured to use docker and swarm to manage your containers.

## Folder Structure

```
docker-space
├── db
│   └── mysql
│       └── service.yml
├── helpers
│   ├── portainer
│   │   └── service.yml
│   └── traefik
│       ├── acme.json
│       ├── service.yml
│       └── traefik.toml
├── init.sh
├── projects
│   └── example
│       └── service.yml
├── README.md
└── scripts
    ├── create-ambiente.sh
    ├── create-hosts.sh
    ├── install-docker.sh
    ├── install-lazydocker.sh
    ├── pull-images.sh
    └── stop-services.sh
```
Containers are divided by folder. Inside is a .yml file with the settings.
To add your projects, you put it inside the 'projects' folder, like the sample folder.

### Detailing the scripts:
This scripts is to help install docker and configure all default services in your computery
```
├── init.sh
        - He is the main installer, responsible for calling the scripts below.
└── scripts
    ├── create-ambiente.sh      
            - Deploy default docker container like: Portainer, Traefik and MySQL
    ├── create-hosts.sh
            - Add in your hosts file the host for all default container: 
                "mysql.localhost | portainer.localhost | traefik.localhost"
    ├── install-docker.sh
            - Install docker and all dependencies of then in your computer.
    ├── install-lazydocker.sh
            - Install a terminal UI for both docker and docker-compose.
    ├── pull-images.sh
            - Pulls images for use in standard containers.
    └── stop-services.sh
            -Stops services like Apache2 and Mysql if you have it installed.
```

## Installation Guide

I created some scripts that help you install everything you need for the docker environment to work. So the first thing to do is give execute permission to the init.sh file
```shell script
sudo chmod +x init.sh
```
And then run it WITHOUT SUDO
```shell script
./init.sh
```
He will ask you some questions, I recommend answering all with 'Y'
