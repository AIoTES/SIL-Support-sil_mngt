# Automatic SIL deployment

This repository contains a docker image that configures the IPSM automatically so that the SIL can be automatically deployed.

## Build docker image

sudo docker build -t sil-mngt:0.0.1 .

## Running the scripts

### Creating IPSM volumes:
sudo docker run -v /var/run/docker.sock:/var/run/docker.sock sil-mngt:0.0.1

### Deleting IPSM volumes:
sudo docker run -v /var/run/docker.sock:/var/run/docker.sock sil-mngt:0.0.1 /bin/sh -c "/mngt/script/uninstall.sh"
