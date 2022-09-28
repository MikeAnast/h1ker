#!/bin/bash
docker rm -f h1ker
docker build -t h1ker . && \
docker run --name=h1ker -p1337:80 h1ker
