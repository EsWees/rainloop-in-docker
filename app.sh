#!/usr/bin/env bash

. varfile

### FOR Developrs use only!
docker run --rm \
	--name ${MSERVICE}-dev \
	-p 61132:80 \
	-v $(pwd)/rainloop:/var/www/html:rw \
  ${MSERVICE}

