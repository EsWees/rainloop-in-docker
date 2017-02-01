#!/usr/bin/env bash

. app.sh

sleep 5

curl -o - 'http://127.0.0.1:61132/'
exit_code="$?"

docker rm -vf ${MSERVICE}-dev

exit $exit_code
