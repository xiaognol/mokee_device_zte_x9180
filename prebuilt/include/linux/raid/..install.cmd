cmd_/home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/raid/.install := perl /home/zjl/mokee44/U9180_kernel-master/scripts/headers_install.pl /home/zjl/mokee44/U9180_kernel-master/include/linux/raid /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/raid arm md_p.h md_u.h; perl /home/zjl/mokee44/U9180_kernel-master/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/linux/raid /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/raid arm ; perl /home/zjl/mokee44/U9180_kernel-master/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/generated/linux/raid /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/raid arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/raid/$$F; done; touch /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/raid/.install
