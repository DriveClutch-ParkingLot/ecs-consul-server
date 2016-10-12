#!/bin/sh

IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4 | tr -d '\n')
echo "IP=${IP}"

docker-entrypoint.sh agent          \
  -server                           \
  -ui                               \
  -advertise $IP                    \
  -client 0.0.0.0                   \
  -bootstrap-expect ${SERVER_COUNT} \
  -dc ${DATACENTER}                 \
  -atlas ${ENV_NAME}                \
  -atlas-join                       \
  -atlas-token ${ATLAS_TOKEN}
