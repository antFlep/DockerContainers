# Radicale Server

Creating a *secure* radicale server image using the official radicale Dockerfile found on their GitHub page.  
[https://radicale.org/](https://radicale.org/)

## Requirements

* `apche2-utils` to generate secure user passwords
* `open-ssl` to generate self signed certificates

## Ports

* Port 5232

## Volumes

* `/var/lib/radicale` contains the calender and contacts data
* `/etc/radicale` contains our custom configuration files
