#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_KERNEL_VERSION := 4.9

# Inherit from common msm8953-common
include device/xiaomi/msm8953-common/BoardConfigCommon.mk

SAKURA_PATH := device/xiaomi/sakura-common

# Display
TARGET_SCREEN_DENSITY := 420

# Camera
TARGET_SUPPORT_HAL1 := false

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/wakeup_gesture"

# Properties
TARGET_VENDOR_PROP += $(SAKURA_PATH)/vendor.prop

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Inherit the proprietary files
include vendor/xiaomi/sakura-common/BoardConfigVendor.mk
