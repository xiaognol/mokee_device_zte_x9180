# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/zte/x9180/full_x9180.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

TARGET_BOOTANIMATION_NAME := 720

# Inherit some common Mokee stuff.
$(call inherit-product, vendor/mk/config/gsm.mk)

$(call inherit-product, vendor/mk/config/cdma.mk)

# Enhanced NFC
$(call inherit-product, vendor/mk/config/nfc_enhanced.mk)

# Inherit some common Mokee stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)



## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x9180
PRODUCT_NAME := mk_x9180
PRODUCT_BRAND := zte
PRODUCT_MODEL := x9180
PRODUCT_MANUFACTURER := zte

PRODUCT_DEFAULT_LANGUAGE := zh
PRODUCT_DEFAULT_REGION := CN

PRODUCT_LOCALES := zh_CN zh_TW en_US

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=x9180 \
    TARGET_DEVICE=x9180 \
    PRODUCT_MODEL=x9180

