#!/bin/bash
docker run -it --rm -p 8080:80 --name linux1  registry.aptero.co/projet-linux
docker exec -it linux1 /bin/bash
apt update 
apt install nginx -y && nohup /usr/sbin/nginx & 
