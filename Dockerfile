FROM alpine:3.13
LABEL maintainer "Kyle Lucy <kmlucy@gmail.com>"

RUN echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' >>/etc/apk/repositories && \
    apk add --no-cache nut@testing libressl

EXPOSE 3493

ADD entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
