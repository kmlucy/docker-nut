FROM alpine:3
LABEL maintainer "Kyle Lucy <kmlucy@gmail.com>"

RUN apk add --no-cache nut libressl

EXPOSE 3493

ADD entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
