cmd_/home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/netfilter_arp/.install := perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/android/android_kernel_zte_u9180X/include/linux/netfilter_arp /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/netfilter_arp arm arp_tables.h arpt_mangle.h; perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/linux/netfilter_arp /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/netfilter_arp arm ; perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/generated/linux/netfilter_arp /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/netfilter_arp arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/netfilter_arp/$$F; done; touch /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/netfilter_arp/.install
