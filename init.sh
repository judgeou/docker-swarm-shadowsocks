#!/bin/bash

echo "version: \"3.3\"

services:
  shadowsocks:
    image: shadowsocks/shadowsocks-libev
    ports:
      - "80:8388"
      - "443:8388"
    environment:
      - METHOD=aes-128-gcm
      - PASSWORD=h8s2J4nuR5Jk" > docker-compose.yml

apt update
apt install -y docker.io
docker swarm init
docker stack deploy app --compose-file docker-compose.yml
