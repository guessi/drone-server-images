FROM public.ecr.aws/docker/library/golang:1.18-alpine3.16 AS builder-base

ARG DRONE_VERSION_TAG=v2.16.0
ARG BUILD_TAGS=

RUN apk add -U --no-cache build-base ca-certificates git
WORKDIR ${GOPATH}/src/github.com/drone/drone
RUN git clone https://github.com/drone/drone.git . \
 && git checkout ${DRONE_VERSION_TAG} \
 && go mod download

FROM builder-base as builder

ARG BUILD_TAGS=

RUN GOOS=linux GOARCH=amd64 go build \
      -ldflags '-extldflags "-static"' \
      -tags "${BUILD_TAGS}" \
      -o /opt/drone-server \
        ./cmd/drone-server

#
# the following content is reference from the upstream repo:
# - https://github.com/drone/drone/tree/master/docker
#
# the only difference is the binary of `drone-server`
#
FROM public.ecr.aws/docker/library/alpine:3.16.3 as base

# after upgrading to "alpine:3.16.3" there's no need to hack nsswitch.conf
# refs:
# - https://www.alpinelinux.org/posts/Alpine-3.16.3-released.html
# - https://git.alpinelinux.org/aports/commit/?h=v3.16.3&id=348653a9ba0701e8e968b3344e72313a9ef334e4
# RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf

ENV GODEBUG netdns=go \
    XDG_CACHE_HOME=/data \
    DRONE_DATABASE_DRIVER=sqlite3 \
    DRONE_DATABASE_DATASOURCE=/data/database.sqlite \
    DRONE_RUNNER_OS=linux \
    DRONE_RUNNER_ARCH=amd64 \
    DRONE_SERVER_PORT=:80 \
    DRONE_SERVER_HOST=localhost \
    DRONE_DATADOG_ENABLED=true \
    DRONE_DATADOG_ENDPOINT=https://stats.drone.ci/api/v1/series

COPY --from=builder-base /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

FROM base

COPY --from=builder /opt/drone-server /bin/

EXPOSE 80 443

VOLUME /data

ENTRYPOINT ["/bin/drone-server"]
