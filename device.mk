#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

#Inherit from vendor
$(call inherit-product, vendor/samsung/j5nlte/j5nlte-vendor.mk)

# Inherit J5 2015 device
$(call inherit-product, device/samsung/msm8916-common/device.mk)

# Inherit from common
$(call inherit-product, device/samsung/j5-common/device-common.mk)

LOCAL_PATH := device/samsung/j5nlte

# NFC
$(call inherit-product, device/samsung/msm8916-common/msm8916.mk)

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
