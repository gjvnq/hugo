#!/bin/bash
set -e

docker build --build-arg HUGO_BUILD_TAGS=extended,nodeploy --target build -t hugo-alpine .
CONTAINTER_ID=$(docker create hugo-alpine)
[ ! -d "build-alpine" ] && mkdir build-alpine
docker cp ${CONTAINTER_ID}:/go/bin/hugo - > build-alpine/hugo.tar
cd build-alpine && tar xf hugo.tar && rm hugo.tar
docker rm -v ${CONTAINTER_ID} > /dev/null
