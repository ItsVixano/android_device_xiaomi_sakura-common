#!/bin/bash
#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export VENDOR=xiaomi
export DEVICE_COMMON=msm8953-common

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
