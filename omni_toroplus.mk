# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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

# Exclude Live Wallpapers
TARGET_EXCLUDE_LIVEWALLPAPERS := true

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 320x181

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Pull in CDMA-specific stuff such as APNs
$(call inherit-product, vendor/omni/config/cdma.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/toroplus/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_toroplus
PRODUCT_DEVICE := toroplus
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
     PRODUCT_NAME=mysidspr \
     BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.3/JWR67B/L700GJ04:user/release-keys" \
     PRIVATE_BUILD_DESC="mysidspr-user 4.3 JWR67B L700GJ04 release-keys"
