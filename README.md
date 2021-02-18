# OpenAI Gym in a docker environment

I modified a docker environment from jderobot, s.t. I can run OpenAI Gym inside a docker container (alongside Jupyter Lab) and I can see the rendered results.

## Docker

### Install

If necessary: https://docs.docker.com/get-docker/

#### Linux Postinstall

https://docs.docker.com/engine/install/linux-postinstall/

### nvidia docker

https://github.com/NVIDIA/nvidia-docker

### Docker Hub download

https://hub.docker.com/repository/docker/llx7/gym_docker

`docker pull llx7/gym_docker`

### docker build

only if you need to: ./.docker/docker_build.sh

### docker run

`./docker_run.sh`

## VNC Viewer

[VNC](https://github.com/JdeRobot/BehaviorStudio/tree/noetic-devel/.docker#using-vnc-to-visualize-container-) to connect a virtual desktop to docker

https://chrome.google.com/webstore/detail/vnc%C2%AE-viewer-for-google-ch/iabmpiboiopbgfabjmgeedhcmjenhbla?hl=en

Address: localhost:5900

pw: jderobot

(can be modified if docker image is rebuild and pw is adapted in .docker/vnc_startup.sh)

## docker logs

`docker logs gym_docker` to get the jupyter website

## further information

- [JdeRobot/BehaviorStudio Docker Readme](https://github.com/JdeRobot/BehaviorStudio/tree/noetic-devel/.docker)
- [.docker/README.md](/.docker/README.md)
