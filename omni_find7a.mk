#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/oppo/find7a/device.mk)

PRODUCT_NAME := omni_find7a
PRODUCT_DEVICE := find7a
PRODUCT_BRAND := Android
PRODUCT_MODEL := Find7a
PRODUCT_MANUFACTURER := Oppo

# Kernel inline build
#TARGET_KERNEL_CONFIG := find7a_defconfig
#TARGET_VARIANT_CONFIG := find7a_defconfig
#TARGET_SELINUX_CONFIG := find7a_defconfig

$(call inherit-product-if-exists, vendor/oppo/find7a/find7a-vendor.mk)
