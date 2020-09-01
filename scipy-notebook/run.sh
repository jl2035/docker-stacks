#!/bin/bash

docker stop jupitery
docker rm jupitery
HOMEDIR="$(pwd)/home_dir"
docker build -t jupitery_scipy_notebook:1.0.0 .
docker run -d --name jupitery -e JUPYTER_ENABLE_LAB=yes -p 8888:8888 -v $HOMEDIR:/home/jovyan jupitery_scipy_notebook:1.0.0

