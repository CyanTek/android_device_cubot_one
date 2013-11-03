## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := one

# Inherit some common CM stuff.
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/cubot/one/device_one.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := one
PRODUCT_NAME := cm_one
PRODUCT_BRAND := CUBOT
PRODUCT_MODEL := one
PRODUCT_MANUFACTURER := CUBOT
PRODUCT_CHARACTERISTICS := phone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=GENERAL_MOBILE \
    BUILD_FINGERPRINT="alps/gionee89_dwe_jb2/gionee89_dwe_jb2:4.2.1/JOP40D/1380104354:user/test-keys" \
    PRIVATE_BUILD_DESC="gionee89_dwe_jb2-user 4.2.1 JOP40D eng.android.1380104354 test-keys"

