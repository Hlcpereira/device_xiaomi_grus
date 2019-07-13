#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from Xiaomi sdm710-common
include device/xiaomi/sdm710-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/grus

# Assert
TARGET_OTA_ASSERT_DEVICE := grus

# Kernel
TARGET_KERNEL_CONFIG := grus_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Inherit from the proprietary version
-include vendor/xiaomi/grus/BoardConfigVendor.mk
