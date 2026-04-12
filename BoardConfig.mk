#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/haydn

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := haydn,haydnin

# Board
TARGET_BOOTLOADER_BOARD_NAME := haydn

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop

# Include proprietary files
include vendor/xiaomi/haydn/BoardConfigVendor.mk

# Inherit MIUI-camera from proprietary files
-include vendor/xiaomi/miuicamera-haydn/BoardConfig.mk
