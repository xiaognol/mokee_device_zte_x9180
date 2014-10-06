#
# Copyright (C) 2011 The Android Open-Source Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, vendor/zte/x9180/x9180-vendor.mk)

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := x9180

#kernel
#ifneq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_PRIVATE_PATH := $(LOCAL_PATH)/pre-kernel
KERNEL_OUT := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ
TARGET_PREBUILT_KERNEL_INCLUDE:=$(KERNEL_OUT)
$(TARGET_PREBUILT_KERNEL_INCLUDE):
	mkdir -p $(KERNEL_OUT)
	-cp -rf $(LOCAL_PRIVATE_PATH)/* $(KERNEL_OUT)/
#endif
#ifneq ($(TARGET_PREBUILT_KERNEL),)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/kernel:kernel \
	$(LOCAL_PATH)/dt.img:dt.img
#endif

# Live Wallpapers
PRODUCT_PACKAGES += \
	LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni


# HAL
PRODUCT_PACKAGES += \
    copybit.msm8226\
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    keystore.msm8226 \
    lights.msm8226 \
    memtrack.msm8226 \
    power.msm8226 \
    liboverlay


# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio_policy.msm8226 \
    audio.primary.msm8226 \
    libaudio-resampler \
    libaudioparameter \
    libqcomvisualizer \
    libqcompostprocbundle \
    libqcomvoiceprocessing \
    tinycap \
    tinymix \
    tinypcminfo \
    tinyplay
	
	

# Audio Policy Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
	$(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf
	
# Wifi        
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/wifi/wpa_supplicant_wcn.conf:system/etc/wifi/wpa_supplicant_wcn.conf \
	$(LOCAL_PATH)/wifi/wpa_supplicant_ath6kl.conf:system/etc/wifi/wpa_supplicant_ath6kl.conf \
	$(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/pronto_wlan.ko:system/lib/modules/pronto/pronto_wlan.ko \
    $(LOCAL_PATH)/wifi/pronto_wlan.ko:system/lib/modules/wlan.ko


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/radio-iris-transport.ko:system/lib/modules/radio-iris-transport.ko

# libxml2 is needed for camera
PRODUCT_PACKAGES += libxml2

PRODUCT_PACKAGES += \
    wcnss_service
    
# Power
PRODUCT_PACKAGES += \
	power.msm8226

# Lights
PRODUCT_PACKAGES += \
	lights.msm8226
	
# Camera
PRODUCT_PACKAGES += \
	camera.msm8226
	
# Keymaster
PRODUCT_PACKAGES += \
    keystore.msm8226

PRODUCT_PACKAGES += \
    gps.msm8226

# GPS configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/izat.conf:system/etc/izat.conf \
	$(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/configs/sap.conf:system/etc/sap.conf \
	$(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf
	
# Extended media support
PRODUCT_PACKAGES += \
    qcmediaplayer

PRODUCT_BOOT_JARS += qcmediaplayer

# Connectivity Engine support
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    services-ext

# FM radio
PRODUCT_PACKAGES += \
	qcom.fmradio \
	libqcomfm_jni \
	FM2 \
	
PRODUCT_BOOT_JARS += qcom.fmradio

# for off charging mode
PRODUCT_PACKAGES += \
    charger \
#    charger_res_images
	
# etc configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/hosts:system/etc/hosts

# Media
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml



# Qcom scripts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/etc/hsic.control.bt.sh:system/etc/hsic.control.bt.sh \
	$(LOCAL_PATH)/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
	$(LOCAL_PATH)/etc/init.crda.sh:system/etc/init.crda.sh \
	$(LOCAL_PATH)/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
	$(LOCAL_PATH)/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
	$(LOCAL_PATH)/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
	$(LOCAL_PATH)/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
	$(LOCAL_PATH)/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
	$(LOCAL_PATH)/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	$(LOCAL_PATH)/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
	$(LOCAL_PATH)/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh
	
	
# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml
  

# Ramdisk
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/ramdisk/fstab.qcom:root/fstab.qcom \
     $(LOCAL_PATH)/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
     $(LOCAL_PATH)/ramdisk/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
     $(LOCAL_PATH)/ramdisk/init.class_main.sh:root/init.class_main.sh \
     $(LOCAL_PATH)/ramdisk/init.qcom.factory.sh:root/init.qcom.factory.sh \
     $(LOCAL_PATH)/ramdisk/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
     $(LOCAL_PATH)/ramdisk/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
     $(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
     $(LOCAL_PATH)/ramdisk/init.qcom.sh:root/init.qcom.sh \
     $(LOCAL_PATH)/ramdisk/init.target.rc:root/init.target.rc \
     $(LOCAL_PATH)/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
     $(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
     $(LOCAL_PATH)/ramdisk/init.nubia.sh:root/init.nubia.sh \
     $(LOCAL_PATH)/ramdisk/init.nubia.usb.rc:root/init.nubia.usb.rc 

# Recovery
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/init.recovery.qcom.rc:root/init.recovery.qcom.rc

# Charger images
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/charger/images/battery_0.png:root/res/images/charger/battery_0.png \
	$(LOCAL_PATH)/charger/images/battery_1.png:root/res/images/charger/battery_1.png \
	$(LOCAL_PATH)/charger/images/battery_2.png:root/res/images/charger/battery_2.png \
	$(LOCAL_PATH)/charger/images/battery_3.png:root/res/images/charger/battery_3.png \
	$(LOCAL_PATH)/charger/images/battery_4.png:root/res/images/charger/battery_4.png \
	$(LOCAL_PATH)/charger/images/battery_5.png:root/res/images/charger/battery_5.png \
	$(LOCAL_PATH)/charger/images/battery_charge.png:root/res/images/charger/battery_charge.png \
	$(LOCAL_PATH)/charger/images/battery_fail.png:root/res/images/charger/battery_fail.png

# keylayout
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
	$(LOCAL_PATH)/keylayout/ft5x06.kl:system/usr/keylayout/ft5x06.kl \
	$(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_PATH)/keylayout/ist30xx.kl:system/usr/keylayout/ist30xx.kl \
	$(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# idc
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/idc/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc \
	$(LOCAL_PATH)/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
	$(LOCAL_PATH)/idc/qwerty.idc:system/usr/idc/qwerty.idc
     
# Thermald
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf
    
PRODUCT_PACKAGES += \
    Torch

# Prebuilt
#PRODUCT_COPY_FILES += \
#	$(LOCAL_PATH)/preinstall/RootExplorer.apk:system/app/RootExplorer.apk

# App
PRODUCT_PACKAGES += \
    PinyinIME
	
# Spn config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml
	
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck
	
# Qualcomm Random Numbers Generator
PRODUCT_PACKAGES += \
    qrngd \
    qrngp

PRODUCT_PACKAGES += \
	libemoji \
	libion

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=60 \
    ro.sys.umsdirtyratio=20

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mass_storage


PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-zte \
	ro.com.google.clientidbase.ms=android-zte \
	ro.com.google.clientidbase.am=android-zte \
	ro.com.google.clientidbase.gmm=android-zte \
	ro.com.google.clientidbase.yt=android-zte


PRODUCT_PROPERTY_OVERRIDES += \
	ro.kernel.android.checkjni=0


# Recovery Options
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.forbid_format=/persist,/firmware,/boot,/sbl1,/tz,/rpm,/sdi,/aboot,/splash,/custom \
    ro.cwm.forbid_mount=/persist,/firmware

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
