cmd_/home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/mfd/wcd9xxx/.install := perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/android/android_kernel_zte_u9180X/include/linux/mfd/wcd9xxx /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/mfd/wcd9xxx arm wcd9310_registers.h wcd9320_registers.h wcd9xxx_registers.h; perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/linux/mfd/wcd9xxx /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/mfd/wcd9xxx arm ; perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/generated/linux/mfd/wcd9xxx /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/mfd/wcd9xxx arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/mfd/wcd9xxx/$$F; done; touch /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/mfd/wcd9xxx/.install
