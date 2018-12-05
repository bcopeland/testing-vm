#!/bin/sh

mount tmpfs -t tmpfs /tmp
mount tmpfs -t tmpfs /var/run
mount sysfs -t sysfs /sys
mount debugfs -t debugfs /sys/kernel/debug

# fstab mounts
mount -o remount,rw /
mount /proc
mount /local

hostname vm

cd /local/tests/vm && ./init
