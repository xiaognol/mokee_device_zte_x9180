cmd_/home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/media/.install := perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/android/android_kernel_zte_u9180X/include/media /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/media arm msm_cam_sensor.h msm_camera.h msm_gemini.h msm_gestures.h msm_isp.h msm_jpeg.h msm_media_info.h msm_mercury.h msm_vidc.h msmb_camera.h msmb_generic_buf_mgr.h msmb_isp.h msmb_ispif.h msmb_pproc.h radio-iris-commands.h tavarua.h vcap_fmt.h; perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/media /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/media arm ; perl /home/zjl/android/android_kernel_zte_u9180X/scripts/headers_install.pl /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/include/generated/media /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/media arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/media/$$F; done; touch /home/zjl/mokee44/out/target/product/x9180/obj/KERNEL_OBJ/usr/include/media/.install
