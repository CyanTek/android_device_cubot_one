## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common cm stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/cubot/one/cubot_one.mk)

# Setup device configuration
PRODUCT_RELEASE_NAME := CUBOT ONE
PRODUCT_DEVICE := CUBOT ONE
PRODUCT_NAME := cm_one
PRODUCT_BRAND := CUBOT
PRODUCT_MODEL := CUBOT ONE
PRODUCT_MANUFACTURER := CUBOT

# Release data
TARGET_NO_LIVEWALLPAPERS := false
TARGET_BOOTANIMATION_NAME := 720

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME= CUBOT ONE
