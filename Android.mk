LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),CUBOT ONE)
    include $(all-subdir-makefiles)
endif