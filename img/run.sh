#!/bin/bash
qemu-system-i386 -kernel bzImage \
-hda rootfs.ext2 \
-boot c \
-m 128 \
-localtime \
-no-reboot \
--nographic \
-append "root=/dev/sda rw" \
-name test_linux \
-net nic -net user 
#-redir tcp:2222::22 \
#-redir tcp:3333::3333

