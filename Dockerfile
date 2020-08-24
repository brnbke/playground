ARG REGISTRY=hub.artifactory.gcp.anz
ARG IMAGE=bitnami/jsonnet:latest

FROM ${REGISTRY}${REGISTRY:+/}${IMAGE} as BASE

WORKDIR /usr/src

COPY ./jsonnet ./jsonnet
#COPY package.json package.json
RUN jsonnet -e {d:4}

ENTRYPOINT ["build.sh"]
