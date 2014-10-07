#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from the proprietary version
-include vendor/zte/x9180/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/zte/x9180/include
BOARD_VENDOR 				:= zte

TARGET_CPU_ABI 				:= armeabi-v7a
TARGET_CPU_ABI2 			:= armeabi
TARGET_CPU_SMP 				:= true
TARGET_ARCH 				:= arm
TARGET_ARCH_VARIANT 		:= armv7-a-neon
ARCH_ARM_HAVE_ARMV7A 		:= true
TARGET_CPU_VARIANT 			:= krait
ARCH_ARM_HAVE_NEON 			:= true
ARCH_ARM_HAVE_TLS_REGISTER 	:= true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp

COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION	:= true
TARGET_USE_KRAIT_PLD_SET 				:= true
TARGET_KRAIT_BIONIC_PLDOFFS 			:= 10
TARGET_KRAIT_BIONIC_PLDTHRESH 			:= 10
TARGET_KRAIT_BIONIC_BBTHRESH 			:= 64
TARGET_KRAIT_BIONIC_PLDSIZE 			:= 64

TARGET_NO_BOOTLOADER 					:= true

TARGET_NO_RADIOIMAGE 					:= true
TARGET_BOARD_PLATFORM 					:= msm8226
TARGET_BOARD_PLATFORM_GPU 				:= qcom-adreno305
TARGET_BOOTLOADER_BOARD_NAME := MSM8226

TARGET_OTA_ASSERT_DEVICE := x9180,u9180,n9180,X9180,U9180,N9180

#WLAN_MODULES:
#	mkdir -p $(KERNEL_MODULES_OUT)/pronto
#	mv $(KERNEL_MODULES_OUT)/wlan.ko $(KERNEL_MODULES_OUT)/pronto/pronto_wlan.ko
#	ln -sf /system/lib/modules/pronto/pronto_wlan.ko $(TARGET_OUT)/lib/modules/wlan.ko

#TARGET_KERNEL_MODULES += WLAN_MODULES

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME          := "wlan"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"


# QCOM
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE


# Display 
BOARD_EGL_CFG := device/zte/x9180/configs/egl.cfg
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3 
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_USES_C2D_COMPOSITION := true 
TARGET_USES_ION := true 
USE_OPENGL_RENDERER := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_USES_ALSA_AUDIO := true
BOARD_HAVE_LOW_LATENCY_AUDIO := true
BOARD_HAVE_QCOM_FM := true
#BOARD_USES_LEGACY_ALSA_AUDIO := true
AUDIO_FEATURE_DISABLED_ANC_HEADSET := true
AUDIO_FEATURE_DISABLED_DS1_DOLBY_DDP := true
AUDIO_FEATURE_DISABLED_MP2_OFFLOAD := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true

# Media
# Media 
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true 
TARGET_QCOM_MEDIA_VARIANT := caf


# QCOM enhanced A/V
TARGET_ENABLE_QC_AV_ENHANCEMENTS 	:= true

# Camera
USE_DEVICE_SPECIFIC_CAMERA 			:= true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Bluetooth
BOARD_HAVE_BLUETOOTH 				:= true
BOARD_HAVE_BLUETOOTH_QCOM 			:= true
#BLUETOOTH_HCI_USE_MCT 				:= true

# GPS
TARGET_NO_RPC := true

# PowerHAL
TARGET_POWERHAL_VARIANT				:= qcom

BOARD_CHARGER_ENABLE_SUSPEND := true

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

#kernel
TARGET_BOARD_INFO_FILE := device/zte/x9180/board-info.txt

BOARD_KERNEL_CMDLINE 	:= console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37

BOARD_KERNEL_BASE 		:= 0x00000000
BOARD_KERNEL_PAGESIZE 	:= 2048
BOARD_MKBOOTIMG_ARGS 	:= --dt device/zte/x9180/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x01e00000


BOARD_BOOTIMAGE_PARTITION_SIZE 		:= 16777216		#16M  boot
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 16777216		#16M  recovery
BOARD_SYSTEMIMAGE_PARTITION_SIZE 	:= 824705024	#786.5M system
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 6120328397	#5.7G data
BOARD_FLASH_BLOCK_SIZE 				:= 131072

TARGET_PREBUILT_KERNEL := device/zte/x9180/kernel
BOARD_KERNEL_SEPARATED_DT := true

#ifneq ($(TARGET_PREBUILT_KERNEL),)
BOARD_CUSTOM_BOOTIMG_MK := device/zte/x9180/mkbootimg_pre.mk



#TARGET_KERNEL_SOURCE := ../test/armani
#TARGET_KERNEL_SOURCE := /home/zjl/android/android_kernel_zte_u9180X
#TARGET_KERNEL_CONFIG := X9180_defconfig
#else
#TARGET_KERNEL_SOURCE := U9180_kernel-master
#TARGET_KERNEL_CONFIG := msm8226-perf_defconfig
#TARGET_xiaomiMT_DTS := true
#BOARD_CUSTOM_BOOTIMG_MK := device/zte/x9180/mkbootimg_pre.mk
#TARGET_KERNEL_CUSTOM_TOOLCHAIN:= linaro-4.8
#endif

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/x9180/bluetooth

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 27
TARGET_USE_CUSTOM_LUN_FILE_PATH := /lun%d/file
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Revcovery
BOARD_HAS_NO_SELECT_BUTTON 			:= true
BOARD_SUPPRESS_EMMC_WIPE			:= true
BOARD_HAS_LARGE_FILESYSTEM 			:= true
TARGET_USERIMAGES_USE_EXT4		 	:= true
#BOARD_RECOVERY_ALWAYS_WIPES			:= true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_USES_MMCUTILS				:= true
RECOVERY_FSTAB_VERSION 	:= 2
BOARD_RECOVERY_SWIPE 				:= true
TARGET_RECOVERY_INITRC := device/zte/x9180/recovery/init.rc
TARGET_RECOVERY_FSTAB 				:= device/zte/x9180/ramdisk/fstab.qcom
DEVICE_RESOLUTION := 720x1280
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_USE_CUSTOM_RECOVERY_FONT 		:= \"roboto_15x24.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"fontcn28_15x40.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT 		:= \"fontcn30_18x48.h\"

BOARD_SEPOLICY_DIRS += \
        device/zte/x9180/sepolicy

# The list below is order dependent
BOARD_SEPOLICY_UNION += \
	app.te \
	device.te \
	file.te \
	file_contexts \
	property.te \
	property_contexts \
	te_macros \
	ueventd.te
	

TARGET_RELEASETOOLS_EXTENSIONS 		:= device/zte/x9180

BOARD_USES_QC_TIME_SERVICES := true
