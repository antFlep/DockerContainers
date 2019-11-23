#!/bin/bash

mkdir /repositories/$1
cd /repositories/$1
git init --bare
chown git:git -R /repositories
