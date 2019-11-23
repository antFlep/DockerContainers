#!/bin/bash

filename=$1

mkdir -p resources/authorized_keys
rm resources/authorized_keys/$filename.pub

ssh-keygen -t rsa -b 4096 -f $filename

mv $filename.pub resources/authorized-keys/
# move private key to home folder
# put it the .ssh folder of the client machines
mv $filename ~/