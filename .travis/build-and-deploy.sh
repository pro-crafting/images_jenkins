#!/usr/bin/env bash

cd ../docker
docker build postremus/jenkins

docker login -u $DOCKER_IO_USERNAME -p $DOCKER_IO_TOKEN
docker push postremus/jenkins