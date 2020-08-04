ARG SOURCE
ARG REVISION
ARG CREATED
ARG VERSION

FROM alpine:edge

ARG SOURCE
ARG REVISION
ARG CREATED
ARG VERSION

RUN apk update && apk add --no-cache \
    bind-tools \
    && addgroup bind-tools \
    && adduser -G bind-tools -s /bin/sh -D bind-tools

USER bind-tools

CMD ["/bin/sh"]

LABEL org.opencontainers.image.title="bind-tools" \
    org.opencontainers.image.description="bind-tools in Docker" \ 
    org.opencontainers.image.source="${SOURCE}" \
    org.opencontainers.image.revision="${REVISION}" \
    org.opencontainers.image.created="${CREATED}" \
    org.opencontainers.image.version="${VERSION}"
