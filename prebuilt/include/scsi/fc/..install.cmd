cmd_/home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/scsi/fc/.install := perl /home/zjl/mokee44/U9180_kernel-master/scripts/headers_install.pl /home/zjl/mokee44/U9180_kernel-master/include/scsi/fc /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/scsi/fc arm fc_els.h fc_fs.h fc_gs.h fc_ns.h; perl /home/zjl/mokee44/U9180_kernel-master/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/scsi/fc /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/scsi/fc arm ; perl /home/zjl/mokee44/U9180_kernel-master/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/generated/scsi/fc /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/scsi/fc arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/scsi/fc/$$F; done; touch /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/scsi/fc/.install
