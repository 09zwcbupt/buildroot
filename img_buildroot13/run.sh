#!/bin/bash
qemu-system-i386 -M pc -kernel bzImage \
-drive file=rootfs.ext2,if=ide \
-append root=/dev/sda -net nic,model=rtl8139 \
#--nographic \
-net user


#qemu-system-i386 -kernel bzImage \
#-hda rootfs.ext2 \
#-boot c \
#-m 128 \
#-localtime \
#-no-reboot \
#--nographic \
#-append "root=/dev/sda rw console=tty1,38400n8" \
#-name test_linux \
#-net nic -net user 
#-redir tcp:2222::22 \
#-redir tcp:3333::3333

