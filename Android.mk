LOCAL_PATH := $(call my-dir)

    include $(all-subdir-makefiles)
	
	    # HACK for prebuilt libril
    $(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libril_intermediates)
    $(shell touch $(OUT)/obj/SHARED_LIBRARIES/libril_intermediates/export_includes)

    include $(call first-makefiles-under,$(call my-dir))