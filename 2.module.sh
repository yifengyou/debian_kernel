#!/bin/bash

set -e

# make mrproper

#make ARCH=arm miniarm-rk3288_defconfig -j4
#make zImage ARCH=arm  -j4
#make modules ARCH=arm  -j4
#make ARCH=arm rk3288-miniarm.dtb  -j4

if [ ! -d `pwd`/rootfs ];then
	mkdir `pwd`/rootfs -p
else
	rm -rf `pwd`/rootfs
fi

make ARCH=arm INSTALL_MOD_PATH=`pwd`/rootfs modules_install
find ./ -name zImage |xargs -i cp {} `pwd`/rootfs

echo "All done! all ok!"
