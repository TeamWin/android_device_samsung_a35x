#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit some common pbrp stuff.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from a35x device
$(call inherit-product, device/samsung/a35x/device.mk)

PRODUCT_DEVICE := a35x
PRODUCT_NAME := twrp_a35x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A356B
PRODUCT_MANUFACTURER := samsung


PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a35x/recovery/root,recovery/root)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_GMS_CLIENTID_BASE := android-samsung
