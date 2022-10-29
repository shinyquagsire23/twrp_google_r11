#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := r11

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Inherit from our custom product configuration
#$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/google/r11/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := r11
PRODUCT_NAME := aosp_r11
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel Watch
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=r11 \
    BUILD_PRODUCT=r11 \
    TARGET_DEVICE=r11

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
