FROM alpine:3.15

RUN echo '@edge https://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
    apk -U upgrade && \
    apk -v add tor@edge curl && \
    chmod 700 /var/lib/tor && \
    rm -rf /var/cache/apk/*

ENTRYPOINT [ "/usr/bin/tor" ]