ARG IMAGE=bitnami/jsonnet:latest

FROM ${IMAGE} as BASE

WORKDIR /usr/src

COPY build.sh /build.sh
COPY ./jsonnet ./jsonnet

ENTRYPOINT ["build.sh"]

RUN jsonnet -e {d:4}
