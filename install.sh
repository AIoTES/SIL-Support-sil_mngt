#!/bin/sh
echo "Creating named volumes..."
docker volume create kafka-data
docker volume create kafka-certs
docker volume create kafka-scripts
docker volume create ipsm-certs
docker volume create ipsm-data
echo "Populating volumes"
cd certs
docker run -v kafka-certs:/data --name helper busybox true
docker cp . helper:/data
docker rm helper
cd ../certs-client
docker run -v ipsm-certs:/data --name helper busybox true
docker cp . helper:/data
docker rm helper
cd ../kafka-scripts
docker run -v kafka-scripts:/data --name helper busybox true
docker cp . helper:/data
docker rm helper
cd ..
echo "Volumes ready to be used"

