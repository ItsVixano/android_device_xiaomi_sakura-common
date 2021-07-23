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
TARGET_SCREEN_DENSITY := 440

# Inherit the proprietary files
include vendor/xiaomi/sakura-common/BoardConfigVendor.mk
