#!/bin/bash

docker stop jupitery
docker rm jupitery
docker run --name jupitery -p 8888:8888 -v home_dir:/home/jovyan jupitery_scipy_notebook:1.0.0
