#!/bin/bash
sed -i "s/con_name/$1/g" docker-compose.yml
docker-compose up -d
docker cp ../$2 $1:/usr/share/nginx/html/index.html

