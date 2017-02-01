#!/usr/bin/env bash

. varfile

docker tag    ${MSERVICE} ${REGISTRY}/${MSERVICE}
docker push   ${REGISTRY}/${MSERVICE}
docker rmi -f ${REGISTRY}/${MSERVICE}
