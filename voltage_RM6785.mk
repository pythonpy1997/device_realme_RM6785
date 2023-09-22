#
# Copyright (C) 2020 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RM6785/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)


# Device identifier. This must come after all inclusions.
PRODUCT_NAME := voltage_RM6785
PRODUCT_DEVICE := RM6785
PRODUCT_BRAND := realme
PRODUCT_MODEL := RM6785
PRODUCT_MANUFACTURER := realme

BUILD_FINGERPRINT := "realme/RMX2001/RMX2001L1:11/RP1A.200720.011/1627302292426:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Target
TARGET_SUPPORTS_QUICK_TAP := false

# VoltageOS
TARGET_BUILD_GRAPHENEOS_CAMERA := true
VOLTAGE_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
