#! /usr/bin/env bash 


docker run -d --restart=unless-stopped -p 8000:80 -p 8443:443  --privileged bda_cluster_server:v5

docker run -d -p 8080:8000 --rm bda_cluster_web:v18 -c "RANCHER='https://192.168.188.79:8443' yarn start"


