#!/bin/bash

chown git:git -R repositories/

for key in /git/authorized-keys/*; do
  key_content=`cat $key`
  if ! grep -q "$key_content" "/home/git/.ssh/authorized_keys"; then
    cat $key >> /home/git/.ssh/authorized_keys
  fi
done

/usr/sbin/sshd -f /git/sshd.config -e -D
