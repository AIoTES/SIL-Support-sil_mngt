# Automatic SIL deployment

This repository contains everything you need to easily install and configure the SIL.

Currently in progress.

## Build docker image

sudo docker build -t sil-mngt:0.0.1 .

## Running the scripts

### Configuring the IPSM:
sudo docker run -v /var/run/docker.sock:/var/run/docker.sock sil-mngt:0.0.1

### Deconfiguring the IPSM
sudo docker run -v /var/run/docker.sock:/var/run/docker.sock sil-mngt:0.0.1 /bin/sh -c "/ipsm/uninstall.sh"
