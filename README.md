# Thinker board S - rk3288

```
Something I hope you know before go into the coding~
First, please watch or star this repo, I'll be more happy if you follow me.
Bug report, questions and discussion are welcome, you can post an issue or pull a request.
```


## build

```
make ARCH=arm miniarm-rk3288_defconfig -j4
make zImage ARCH=arm  -j4
make modules ARCH=arm  -j4
make ARCH=arm rk3288-miniarm.dtb  -j4
make ARCH=arm INSTALL_MOD_PATH=`pwd`/rootfs modules_install
```

## install


```
cp `pwd`/rootfs/* /lib/modules/ -a
find ./ -name zImage |xargs -i cp {} /boot/zImage -a
```
reboot, enjoy it~~


## test

```
root@tb:~/debian_kernel.git# uname -a
Linux tb 4.4.132-nicyou-20210801+ #2 SMP Sun Aug 1 14:48:53 CST 2021 armv7l GNU/Linux
```

---
