#!/bin/bash

set -e

cd rootfs
dd if=zImage of=gzipzImage bs=1 skip=26608

zcat gzipzImage |strings |grep nicyou
