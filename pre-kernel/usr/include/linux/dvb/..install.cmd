cmd_/home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/dvb/.install := perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/android/android_kernel_zte_u9180X/include/linux/dvb /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/dvb arm audio.h ca.h dmx.h frontend.h net.h osd.h version.h video.h; perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/linux/dvb /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/dvb arm ; perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/generated/linux/dvb /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/dvb arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/dvb/$$F; done; touch /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/linux/dvb/.install
