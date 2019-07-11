#!/bin/sh
docker volume rm kafka-data kafka-certs kafka-scripts ipsm-certs ipsm-data
echo "Volumes removed"
