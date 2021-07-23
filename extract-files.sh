#!/bin/bash
#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export VENDOR=xiaomi
export DEVICE_COMMON=msm8953-common
export DEVICE_SPECIFIED_COMMON_DEVICE="daisy sakura"

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
