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
$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := CUBOT 0NE
PRODUCT_DEVICE := CUBOT ONE
PRODUCT_MODEL := CUBOT ONE

# Boot files
LOCAL_PATH := device/cubot/one
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/cubot/one/configs,system)
	
# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/cubot/one/rootdir,root)	
	
# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml
	
# Prebuild Binaries (Blobs)	
PRODUCT_COPY_FILES += \
    device/cubot/one/prebuilt/lib/libril.so:obj/lib/libril.so \
    device/cubot/one/prebuilt/lib/librilmtk.so:obj/lib/librilmtk.so \
	device/cubot/one/prebuilt/lib/librilmtkmd2.so:obj/lib/librilmtkmd2.so \
	device/cubot/one/prebuilt/lib/mtk-ril.so:obj/lib/mtk-ril.so \
	device/cubot/one/prebuilt/lib/mtk-rilmd2.so:obj/lib/mtk-rilmd2.so \
    device/cubot/one/prebuilt/bin/pvrsrvctl:system/vendor/bin/pvrsrvctl \
    device/cubot/one/prebuilt/bin/rc.fac:system/vendor/bin/rc.fac \
	device/cubot/one/prebuilt/bin/rild:system/vendor/bin/rild \
    device/cubot/one/prebuilt/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    device/cubot/one/prebuilt/lib/egl/libEGL_mtk.so:system/vendor/lib/egl/libEGL_mtk.so \
    device/cubot/one/prebuilt/lib/egl/libGLESv1_CM_mtk.so:system/vendor/lib/egl/libGLESv1_CM_mtk.so \
    device/cubot/one/prebuilt/lib/egl/libGLESv2_mtk.so:system/vendor/lib/egl/libGLESv2_mtk.so \
    device/cubot/one/prebuilt/lib/hw/gralloc.mt6589.so:system/vendor/lib/hw/gralloc.mt6589.so \
    device/cubot/one/prebuilt/lib/libBLPP.so:system/vendor/lib/libBLPP.so \
    device/cubot/one/prebuilt/lib/libIMGegl.so:system/vendor/lib/libIMGegl.so \
    device/cubot/one/prebuilt/lib/libPVRScopeServices.so:system/vendor/lib/libPVRScopeServices.so \
    device/cubot/one/prebuilt/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
    device/cubot/one/prebuilt/lib/libglslcompiler.so:system/vendor/lib/libglslcompiler.so \
    device/cubot/one/prebuilt/lib/libpvr2d.so:system/vendor/lib/libpvr2d.so \
    device/cubot/one/prebuilt/lib/libpvrANDROID_WSEGL.so:system/vendor/lib/libpvrANDROID_WSEGL.so \
    device/cubot/one/prebuilt/lib/libsrv_init.so:system/vendor/lib/libsrv_init.so \
    device/cubot/one/prebuilt/lib/libsrv_um.so:system/vendor/lib/libsrv_um.so \
    device/cubot/one/prebuilt/lib/libusc.so:system/vendor/lib/libusc.so \
    device/cubot/one/prebuilt/lib/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
    device/cubot/one/prebuilt/lib/libwvm.so:system/vendor/lib/libwvm.so

PRODUCT_PACKAGES += \
    static_busybox \
    make_ext4fs \
    setup_fs \
    com.android.future.usb.accessory

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    persist.mtk.aee.aed=on \
    ro.debuggable=1 \
    persist.sys.usb.config=mass_storage \
    persist.service.acm.enable=0 \
    ro.mount.fs=EXT4	

# Cubot One uses high-density artwork
PRODUCT_AAPT_CONFIG := normal xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xdpi
PRODUCT_LOCALES += \
 		xdpi \
		hdpi