#!/usr/bin/env bash
#Steps to create Docker image and publish on Dockerhub

# WARN: Check the Dockerfile, make sure the JAR_FILE var is properly used
docker build --rm -t msathepivotal/fortune-service-k8s:latest .
docker images
docker run -d -p 8080:8080 fortune-service-k8s:latest
docker ps
docker images
docker push msathepivotal/fortune-service-k8s