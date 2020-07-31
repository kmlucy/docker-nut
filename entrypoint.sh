#!/bin/sh

mkdir -p /var/run/nut

/usr/sbin/upsdrvctl -u root start
exec /usr/sbin/upsd -u root -D
