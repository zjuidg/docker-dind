#!/bin/sh
set -e

if [ -z $IMAGE ]; then
    echo "No IMAGE variable is defined!"
    exit 1
fi

docker info
docker login -u gitlab-ci-token -p $CI_JOB_TOKEN $CI_REGISTRY
docker pull $IMAGE || true
docker build $(docker inspect --type=image $IMAGE >/dev/null 2>&1 && echo "--cache-from $IMAGE") -t $IMAGE .
docker push $IMAGE
