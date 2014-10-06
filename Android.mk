ifneq ($(filter x9180,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wcd9306; \
    ln -sf /data/misc/audio/wcd9320_anc.bin \
    $(TARGET_OUT_ETC)/firmware/wcd9306/wcd9306_anc.bin; \
    ln -sf /data/misc/audio/mbhc.bin \
    $(TARGET_OUT_ETC)/firmware/wcd9306/wcd9306_mbhc.bin)

# Create a link for the WCNSS config file, which ends up as a writable
# version in /data/misc/wifi
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wlan/prima; \
    ln -sf /persist/WCNSS_qcom_cfg.ini \
	    $(TARGET_OUT)/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini; \
    ln -sf /persist/WCNSS_qcom_wlan_nv.bin \
	    $(TARGET_OUT)/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin)
endif
