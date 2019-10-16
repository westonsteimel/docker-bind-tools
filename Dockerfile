FROM alpine:edge

RUN apk update && apk add --no-cache \
    bind-tools \
    && addgroup bind-tools \
    && adduser -G bind-tools -s /bin/sh -D bind-tools

USER bind-tools

CMD ["/bin/sh"]

LABEL org.opencontainers.image.title="bind-tools" \
    org.opencontainers.image.description="bind-tools in Docker" \ 
    org.opencontainers.image.url="https://github.com/westonsteimel/docker-bind-tools" \ 
    org.opencontainers.image.source="https://github.com/westonsteimel/docker-bind-tools"
