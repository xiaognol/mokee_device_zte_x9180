cmd_/home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/sound/.install := perl /home/zjl/mokee44/U9180_kernel-master/scripts/headers_install.pl /home/zjl/mokee44/U9180_kernel-master/include/sound /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/sound arm asequencer.h asound.h asound_fm.h compress_offload.h compress_params.h emu10k1.h hdsp.h hdspm.h lsm_params.h sb16_csp.h sfnt_info.h tlv.h voice_params.h; perl /home/zjl/mokee44/U9180_kernel-master/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/sound /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/sound arm ; perl /home/zjl/mokee44/U9180_kernel-master/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/generated/sound /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/sound arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/sound/$$F; done; touch /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/sound/.install
