# Git Server

A simple docker-image creating a git server based on:  
[https://git-scm.com/book/en/v2/Git-on-the-Server-Setting-Up-the-Server](https://git-scm.com/book/en/v2/Git-on-the-Server-Setting-Up-the-Server)

## Notice

* Image works only with key based authentication
  * Put public keys into `/ressources/authorized-keys` before building
  * Or bind mount your public keys into `git/authorized-keys`
  * Any keys in those directories will be added to `authorized_keys`
  * Do not forget to add the private keys to the ssh-agent using `ssh-add` if it is password protected
* The git user cannot execute any commands on the container
* The git user can only execute git commands.

## Create a repository

1. Login to the container with `docker exec it <container-name> /bin/bash`
2. Change the ownership with `chmod -R git:git <path-to-repository>`

Alternatively:

1. Login to the container with `docker exec it <container-name> /bin/bash`
2. Execute `./git/init-repo.sh <repository-name>` which creates a new repository and gives ownership to the git user.

## Cloning repository

* Use : `git clone ssh://git@<ip-or-hostname>:<port>/repositories/<repository-name>`

## Ports

* Port 22 (OpenSSH Server)

## Volumes

* `/repositories` contains the repositories
