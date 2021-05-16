#!/bin/bash

docker run --rm -it -v "$(pwd)/registry_data":/root -p 8080:8080 --entrypoint /root/entrypoint_register_keys.sh docker.pkg.github.com/erasmus-without-paper/ewp-registry-service/ewp-registry-service:latest 
