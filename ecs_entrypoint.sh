#!/bin/sh

IP=$(curl http://169.254.169.254/latest/meta-data/local-ipv4 | tr -d '\n')

docker-entrypoint.sh -client 0.0.0.0 -bootstrap-expect ${SERVER_COUNT} -atlas ${ENV_NAME} -atlas-join -atlas-token ${ATLAS_TOKEN}
