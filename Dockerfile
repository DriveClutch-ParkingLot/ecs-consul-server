FROM consul:v0.7.0
MAINTAINER David Hallum <david@driveclutch.com>

COPY entrypoint.sh /

ENV SERVER_COUNT ""
ENV DATACENTER ""
ENV ENV_NAME ""
ENV ATLAS_TOKEN ""

CMD "/entrypoint.sh"
