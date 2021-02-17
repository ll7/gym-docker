#!/bin/bash

docker run --gpus all -dit --name gym_docker \
        -p 5900:5900 \
        -p 8888:8888 \
        -v $(pwd)/workspace:/root/workspace \
        gym_docker:v1

sleep 5

docker logs gym_docker