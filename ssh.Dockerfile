FROM alpine:latest

RUN set -xv; \
    apk --update add --no-cache openssh-client;

WORKDIR /
COPY entrypoint.sh /
RUN set -xv; \
    chmod +x /entrypoint.sh;

ENTRYPOINT [ "/entrypoint.sh" ]