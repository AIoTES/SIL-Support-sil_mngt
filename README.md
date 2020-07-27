# SIL management scripts

This repository contains a set of scripts that manage the IPSM Docker volumes automatically so that the SIL can be automatically deployed. This image is used as a previous step for the deployment of the SIL. It must be used only the first time the SIL is deployed (or in case the SIL external Docker volumes have been deleted for some reason).


## Running the scripts

### Creating IPSM volumes:
`sudo docker run -v /var/run/docker.sock:/var/run/docker.sock sil-mngt:0.0.1`

### Deleting IPSM volumes:
`sudo docker run -v /var/run/docker.sock:/var/run/docker.sock sil-mngt:0.0.1 /bin/sh -c "/mngt/script/uninstall.sh"`


## Build docker image

`sudo docker build -t sil-mngt:0.0.1 .`

