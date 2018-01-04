LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fstab.yoshino
LOCAL_SRC_FILES := fstab.yoshino
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := fstab.yoshino
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.$(TARGET_DEVICE)
LOCAL_SRC_FILES := init.yoshino.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.$(TARGET_DEVICE)
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.yoshino.pwr
LOCAL_SRC_FILES := init.yoshino.pwr.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.yoshino.pwr
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd.$(TARGET_DEVICE)
LOCAL_SRC_FILES := ueventd.yoshino.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := ueventd.$(TARGET_DEVICE)
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

$(shell mkdir -p $(PRODUCT_OUT)/root)
$(shell pushd $(PRODUCT_OUT)/root > /dev/null && ln -s fstab.yoshino fstab.$(TARGET_DEVICE) && popd > /dev/null)

$(shell mkdir -p $(PRODUCT_OUT)/system/rfs/msm/mpss/readonly/vendor)
$(shell mkdir -p $(PRODUCT_OUT)/system/rfs/msm/adsp/readonly/vendor)
$(shell mkdir -p $(PRODUCT_OUT)/system/rfs/msm/slpi/readonly/vendor)

$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /data/tombstones/modem rfs/msm/mpss/ramdumps && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /persist/rfs/msm/mpss rfs/msm/mpss/readwrite && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /persist/rfs/shared rfs/msm/mpss/shared && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /persist/hlos_rfs/shared rfs/msm/mpss/hlos && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /firmware rfs/msm/mpss/readonly/firmware && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /odm/firmware rfs/msm/mpss/readonly/vendor/firmware && popd > /dev/null)

$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /data/tombstones/lpass rfs/msm/adsp/ramdumps && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /persist/rfs/msm/adsp rfs/msm/adsp/readwrite && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /persist/rfs/shared rfs/msm/adsp/shared && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /persist/hlos_rfs/shared rfs/msm/adsp/hlos && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /firmware rfs/msm/adsp/readonly/firmware && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /odm/firmware rfs/msm/adsp/readonly/vendor/firmware && popd > /dev/null)

$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /data/tombstones/lpass rfs/msm/slpi/ramdumps && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /persist/rfs/msm/slpi rfs/msm/slpi/readwrite && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /persist/rfs/shared rfs/msm/slpi/shared && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /persist/hlos_rfs/shared rfs/msm/slpi/hlos && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /firmware rfs/msm/slpi/readonly/firmware && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/system > /dev/null && ln -s /odm/firmware rfs/msm/slpi/readonly/vendor/firmware && popd > /dev/null)

$(shell mkdir -p $(PRODUCT_OUT)/vendor/firmware/wlan/qca_cld)
$(shell pushd $(PRODUCT_OUT)/vendor > /dev/null && ln -s /odm/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini etc/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/vendor > /dev/null && ln -s /odm/firmware/wlan/qca_cld/bdwlan.bin etc/firmware/wlan/qca_cld/bdwlan.bin && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/vendor > /dev/null && ln -s /data/misc/wifi/wlan_mac.bin etc/firmware/wlan/qca_cld/wlan_mac.bin && popd > /dev/null)
