#!/bin/bash
sed -i "s/con_name/$1/g" /home/raghu/jenkins-data/jen_docker_job/Test/Requirments/docker-compose.yml 
docker-compose -f /home/raghu/jenkins-data/jen_docker_job/Test/Requirments/docker-compose.yml up -d
docker cp /home/raghu/jenkins-data/jen_docker_job/Test/$2 $1:/usr/share/nginx/html/index.html

