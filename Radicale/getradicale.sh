#!/bin/bash

username=$1
version="2.1.10"

rm Dockerfile
mkdir resources

# generate certificates for ssh
./utils/certgen.sh

# generate user passwords with apaches htpasswd tool
htpasswd -B -c /resources/users username

curl -JLO https://raw.githubusercontent.com/Kozea/Radicale/master/Dockerfile

# use change radicale version in dockerfile
sed -i 's/^ARG VERSION=master/ARG VERSION=$version/g' Dockerfile
# copy the files inside the resources directory into the /etc/radicale directory
sed -i '0,/^VOLUME/s/^VOLUME/\nCOPY .\/ressources\/ \/etc\/radicale\n\n&/' Dockerfile
