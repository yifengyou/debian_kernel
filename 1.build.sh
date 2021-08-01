#!/bin/bash

set -e

# make mrproper

make ARCH=arm miniarm-rk3288_defconfig -j4
make zImage ARCH=arm  -j4
make modules ARCH=arm  -j4
make ARCH=arm rk3288-miniarm.dtb  -j4

echo "All done! all ok!"
