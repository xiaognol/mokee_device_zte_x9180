cmd_/home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/can/.install := perl /home/zjl/mokee44/U9180_kernel-master/scripts/headers_install.pl /home/zjl/mokee44/U9180_kernel-master/include/linux/can /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/can arm bcm.h error.h gw.h netlink.h raw.h; perl /home/zjl/mokee44/U9180_kernel-master/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/linux/can /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/can arm ; perl /home/zjl/mokee44/U9180_kernel-master/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/generated/linux/can /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/can arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/can/$$F; done; touch /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/can/.install
