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

# Fingerprint
SOONG_CONFIG_XIAOMI_SDM710_FOD_POS_X = 448
SOONG_CONFIG_XIAOMI_SDM710_FOD_POS_Y = 1983
SOONG_CONFIG_XIAOMI_SDM710_FOD_SIZE = 185

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE += $(DEVICE_PATH)/framework_manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := grus_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# NFC
TARGET_USES_NQ_NFC := true

# Inherit from the proprietary version
-include vendor/xiaomi/grus/BoardConfigVendor.mk

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
