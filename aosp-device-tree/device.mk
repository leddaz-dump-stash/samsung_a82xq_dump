#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.qcom.usb.sh \
    init.qti.keymaster.sh \
    init.qti.chg_policy.sh \
    init.qti.dcvs.sh \
    init.qti.qcv.sh \
    init.mdm.sh \
    init.qcom.efs.sync.sh \
    init.qcom.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.class_core.sh \
    install-recovery.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.coex.sh \
    init.crda.sh \
    qca6234-service.sh \

PRODUCT_PACKAGES += \
    fstab.ramplus \
    init.qti.ufs.rc \
    init.qcom.rc \
    init.target.rc \
    init.qcom.usb.rc \
    init.samsung.display.rc \
    init.a82xq.rc \
    init.samsung.bsp.rc \
    init.qcom.factory.rc \
    init.samsung.rc \
    init.recovery.qcom.rc \
    init.recovery.samsung.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.ramplus:$(TARGET_COPY_OUT_RAMDISK)/fstab.ramplus

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/a82xq/a82xq-vendor.mk)
