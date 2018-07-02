FROM alpine:3.7
LABEL maintainer "Kyle Lucy <kmlucy@gmail.com>"

RUN echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/main' \
      >>/etc/apk/repositories && \
    echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' \
      >>/etc/apk/repositories && \
    apk add --update nut@testing \
      libressl2.7-libcrypto@edge libressl2.7-libssl@edge

EXPOSE 3493

ADD entrypoint.sh /usr/local/bin/

ENTRYPOINT /usr/local/bin/entrypoint.sh
