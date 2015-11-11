# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).

# Inherit from common m8-common
-include device/htc/m8-common/BoardConfigCommon.mk

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_MEMCPY_BASE_OPT_DISABLE := true
TARGET_CPU_VARIANT := krait
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/memul/bluetooth

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := memul
TARGET_NO_BOOTLOADER := true

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 369098752
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2818572288
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3355443200

# Includes
TARGET_SPECIFIC_HEADER_PATH := device/htc/memul/include

# Inherit from common m8-common
-include device/htc/msm8974-common/BoardConfigCommon.mk

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := device/htc/memul/mkbootimg.mk
TARGET_KERNEL_CONFIG := cm_memul_defconfig

# RIL
BOARD_RIL_CLASS := ../../../device/htc/memul/ril

# inherit from the proprietary version
-include vendor/htc/memul/BoardConfigVendor.mk
