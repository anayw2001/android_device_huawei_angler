# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aicp_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P

TARGET_VENDOR := huawei

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Davor B (LorD ClockaN), doc HD (semdoc)"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:8.0.0/OPR5.170623.007/4302479:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 8.0.0 OPR5.170623.007 4302479 release-keys"
