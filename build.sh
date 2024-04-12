#!/usr/bin/env bash

# build，可选参数 `--no-cache`
echo '打包镜像...'
export CONTAINER_REGISTRY=docker.io
export CONTAINER_REGISTRY_NAMESPACE=chf007
export IMAGE_NAME=alpine-openssh-client
export IMAGE_VERSION=1.0.0
export DOCKER_BUILDKIT=1
docker build --pull \
--build-arg IMAGE_VERSION=$IMAGE_VERSION \
--build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') \
-t $CONTAINER_REGISTRY/$CONTAINER_REGISTRY_NAMESPACE/$IMAGE_NAME:$IMAGE_VERSION \
-t $CONTAINER_REGISTRY/$CONTAINER_REGISTRY_NAMESPACE/$IMAGE_NAME:latest \
-f Dockerfile . || exit 1

# push
echo '推送镜像...'
docker push $CONTAINER_REGISTRY/$CONTAINER_REGISTRY_NAMESPACE/$IMAGE_NAME:$IMAGE_VERSION


