# Docker Space
This is a workspace fully configured to use docker and swarm to manage your containers.

## Folder Structure

```
docker-space
├── db
│   └── mysql
│       ├── conf.d
│       │   └── mysql.cnf
|       ├── data
│       └── service.yml
├── helpers
│   ├── portainer
│   │   ├── data
│   │   └── service.yml
│   └── traefik
│       ├── acme.json
│       ├── service.yml
│       └── traefik.toml
├── init-docker.sh
├── install-docker.sh
├── projects
│   └── example
│       └── service.yml
├── README.md
├── scripts
│   ├── create-environment.sh
│   ├── create-hosts.sh
│   ├── install-lazydocker.sh
│   ├── pull-images.sh
│   └── stop-services.sh
└── unistall-docker.sh
```

Containers are divided by folder. Inside is a .yml file with the settings.

##  Explaining Structure
Each container is inside a folder with its name, and inside its folder has its own .yml configuration file.
- We have the folder 'db' where, inside, we put all containers for database. 
By default mysql is already configured
- We have the folder 'helpers' where, inside, we put all containers for help to a manage you services, example:
By default the portainer and traefik are already set.
> Portainer is a lightweight management UI which allows you to easily manage your Docker host or Swarm cluster, for more information access https://www.portainer.io/

> Traefik is an open-source Edge Router that makes publishing your services a fun and easy experience. It receives requests on behalf of your system and finds out which components are responsible for handling them, for more information access: https://docs.traefik.io/ 


## Installation Guide
I created some scripts that help you install everything you need for the docker environment to work.
                                    
### Installing Docker
If you dont have a docker installed in your computer follow these steps:

1. First give execute permission to the 'install-docker.sh'
```shell script
chmod +x install-docker.sh
```
2. Now run it

```shell script
./install-docker.sh
```
**Once you are done you must log out of your account and sign in again !!**

## Creating Environment

After installing the docker and log out and sign in again, you need to set up your environment, follow these steps:

1. First thing to do is give execute permission to the 'init-docker.sh' file
```shell script
chmod +x init-docker.sh
```
2. Now run it with SUDO
```shell script
sudo ./init-docker.sh
```
He will ask you some questions, I recommend answering all with 'Y'

If all goes well, you can already use the default services by going to the following links:
- http://portainer.local.com
- http://mysql.local.com
- http://traefik.local.com


After installing everything, if you wish you can delete the configuration scripts, run:
```shell script
sudo rm -rf scripts/ && sudo rm init-docker.sh && sudo rm install-docker.sh && sudo rm unistall-docker.sh
```

## Setting up your projects
All your web projects you should put in the 'projects' folder.
There is a 'example' folder that is already pre-configured to run PHP + NGINX, you can use it as a reference to create your containers.