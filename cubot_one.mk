# Copyright (C) 2012 The Android Open Source Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

-include device/mediatek/mt6589/mt6589.mk

# Discard inherited values and use our own instead.
PRODUCT_NAME := CUBOT 0NE
PRODUCT_DEVICE := CUBOT ONE
PRODUCT_MODEL := CUBOT ONE

# Boot files
ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
endif

# Cubot One uses high-density artwork
PRODUCT_AAPT_CONFIG := normal xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xdpi
PRODUCT_LOCALES += \
 		xdpi \
		hdpi