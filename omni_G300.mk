#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from G300 device
$(call inherit-product, device/general/G300/device.mk)

PRODUCT_DEVICE := G300
PRODUCT_NAME := omni_G300
PRODUCT_BRAND := GM
PRODUCT_MODEL := G300
PRODUCT_MANUFACTURER := general

PRODUCT_GMS_CLIENTID_BASE := android-telpa-trev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_v730_64-user 10 QP1A.190711.020 Q.G300.2011.A release-keys"

BUILD_FINGERPRINT := GM/G300/G300:10/QP1A.190711.020/Q.G300.2011.A:user/release-keys
