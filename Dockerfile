FROM alpine:3.9
LABEL maintainer "Kyle Lucy <kmlucy@gmail.com>"

RUN echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' >>/etc/apk/repositories && \
    apk add --no-cache nut@testing libressl2.7-libcrypto libressl2.7-libssl

EXPOSE 3493

ADD entrypoint.sh /usr/local/bin/

ENTRYPOINT /usr/local/bin/entrypoint.sh
