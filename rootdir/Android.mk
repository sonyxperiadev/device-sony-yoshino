LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), maple)
include $(CLEAR_VARS)
LOCAL_MODULE := fstab.$(TARGET_DEVICE)
LOCAL_SRC_FILES := vendor/etc/fstab_legacy.yoshino
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := fstab.$(TARGET_DEVICE)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
include $(BUILD_PREBUILT)
else
include $(CLEAR_VARS)
LOCAL_MODULE := fstab.$(TARGET_DEVICE)
LOCAL_SRC_FILES := vendor/etc/fstab.yoshino
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := fstab.$(TARGET_DEVICE)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := init.yoshino
LOCAL_SRC_FILES := vendor/etc/init/init.yoshino.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.yoshino
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.yoshino.pwr
LOCAL_SRC_FILES := vendor/etc/init/init.yoshino.pwr.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.yoshino.pwr
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd
LOCAL_SRC_FILES := vendor/ueventd.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := ueventd
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)
include $(BUILD_PREBUILT)
