cmd_/home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/caif/.install := perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/android/android_kernel_zte_u9180X/include/linux/caif /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/caif arm caif_socket.h if_caif.h; perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/linux/caif /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/caif arm ; perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/generated/linux/caif /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/caif arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/caif/$$F; done; touch /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/caif/.install
