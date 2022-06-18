#
# Copyright (C) 2011 The Android Open-Source Project
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

PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/fstab.ramdisk:$(TARGET_COPY_OUT_RAMDISK)/fstab.FP4 \
    $(LOCAL_PATH)/fstab.ramdisk:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.FP4 \
    device/generic/sdm845/init.common.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.FP4.rc \
    device/generic/sdm845/init.common.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.FP4.usb.rc \
    device/generic/sdm845/init.recovery.common.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.FP4.rc \
    device/generic/sdm845/common.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/axolotl.kl

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/fstab.ramdisk
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 50
TARGET_RECOVERY_UI_MARGIN_WIDTH := 10

# Lights
PRODUCT_PACKAGES += lights.FP4

# Boot control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl-qti \
    android.hardware.boot@1.1-impl-qti.recovery \
    android.hardware.boot@1.1-service \
    bootctrl.FP4 \
    bootctrl.FP4.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctl

# Recovery
PRODUCT_PACKAGES += \
    fastbootd

# Dynamic Partitions
PRODUCT_BUILD_SUPER_PARTITION := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_USE_DYNAMIC_PARTITION_SIZE := true
