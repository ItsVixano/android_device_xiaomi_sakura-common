#!/bin/bash
#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        vendor/lib64/libvendor.goodix.hardware.fingerprint@1.0-service.so)
            "${PATCHELF_0_8}" --remove-needed "libprotobuf-cpp-lite.so" "${2}"
            ;;
        vendor/lib64/libgf_ca.so)
            sed -i 's|/vendor/firmware_mnt/image|/vendor/firmware_fp\x0\x0\x0\x0\x0\x0\x0|g' "${2}"
            ;;
        vendor/lib64/hw/fingerprint.fpc.default.so)
            sed -i 's|/vendor/firmware_mnt/image|/vendor/firmware_fp\x0\x0\x0\x0\x0\x0\x0|g' "${2}"
            ;;
        vendor/lib64/libril-qc-hal-qmi.so)
            "${PATCHELF}" --replace-needed "libprotobuf-cpp-full.so" "libprotobuf-cpp-full-v29.so" "${2}"
            ;;
    esac
}

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
