#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a82xq device
$(call inherit-product, device/samsung/a82xq/device.mk)

PRODUCT_DEVICE := a82xq
PRODUCT_NAME := lineage_a82xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A826S
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a82xqskt-user 13 TP1A.220624.014 A826SKSU4EWE3 release-keys"

BUILD_FINGERPRINT := samsung/a82xqskt/a82xq:11/RP1A.200720.012/A826SKSU4EWE3:user/release-keys
