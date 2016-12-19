#!/bin/sh

IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4 | tr -d '\n')
echo "IP=${IP}"

docker-entrypoint.sh agent              \
  -server                               \
  -ui                                   \
  -advertise=$IP                        \
  -bootstrap-expect=${SERVER_COUNT}     \
  -client=0.0.0.0                       \
  -datacenter=${DATACENTER}             \
  -retry-join-ec2-tag-key="Cluster"     \
  -retry-join-ec2-tag-value=${ENV_NAME} \
  -log-level=${LOG_LEVEL}
