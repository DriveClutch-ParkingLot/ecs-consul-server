FROM consul:0.7.1
MAINTAINER David Hallum <david@driveclutch.com>

COPY ecs_entrypoint.sh /

ENV SERVER_COUNT ""
ENV ENV_NAME ""
ENV DATACENTER ""
ENV LOG_LEVEL "warn"

CMD "/ecs_entrypoint.sh"
