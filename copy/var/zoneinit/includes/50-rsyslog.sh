#!/bin/sh

# disable system log
/usr/sbin/svcadm disable svc:/system/system-log:default
# enable rsyslog module. Default installed without local logging:
/usr/sbin/svcadm enable svc:/pkgsrc/rsyslog:default
