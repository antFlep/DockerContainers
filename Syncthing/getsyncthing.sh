#!/bin/bash
version="1.3.1"

rm -rf sources syncthing*
curl -JLO https://github.com/syncthing/syncthing/releases/download/v$version/syncthing-source-v$version.tar.gz
tar -xzf syncthing-source-v$version.tar.gz

mv syncthing sources
rm syncthing-source-v$version.tar.gz
