#!/bin/sh

# skip this, we don't use ssl yet:
# test -d /data/ssl || mkdir /data/ssl

# create subdir for logging:
mkdir -p /var/lib/haproxy/dev

# setup log caroussel:
logadm -C 10 -p 1d -a 'kill -HUP `cat /var/run/*syslog*.pid`' -w haproxy /var/log/haproxy/*.log

/usr/sbin/svcadm enable svc:/pkgsrc/haproxy:default
