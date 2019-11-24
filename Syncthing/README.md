# Syncthing

Building an Docker image from the source files on syncthing's GitHub page.
Syncthing only provides an official `amd64` image on DockerHub which does not work other architectures such as `arm`.
However an `arm` image can easily be created using the the sources files.
The `getsyncthing.sh` script downloads the source files.
We can easily build an image since a `Dockerfile` is already being provided with the source files.

## network

* host network to have full local network speed.
* Otherwise expose port 8384/tcp to access the web gui.

## volumes

* `/var/syncthing` contains the synced folders
