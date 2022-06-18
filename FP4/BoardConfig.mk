include device/generic/sdm845/BoardConfigCommon.mk

# Board Information
TARGET_BOOTLOADER_BOARD_NAME := FP4
TARGET_BOARD_PLATFORM := FP4

# Kernel/boot.img Configuration
BOARD_KERNEL_CMDLINE += androidboot.hardware=FP4
BOARD_KERNEL_CMDLINE += sdhci.debug_quirks=0x40

##### Partition handling

BOARD_DYNAMIC_PARTITION_ENABLE := true
TARGET_USE_DYNAMIC_PARTITIONS := true

# Define the Dynamic Partition sizes and groups.
BOARD_SUPER_PARTITION_SIZE := 6442450944
BOARD_SUPER_PARTITION_GROUPS := FP4_dynamic_partitions
BOARD_FP4_DYNAMIC_PARTITIONS_SIZE := 6438256640
BOARD_FP4_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    odm \
    product \
    system \
    system_ext \
    vendor \

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    odm \
    product \
    recovery \
    system \
    system_ext \
    vbmeta \
    vbmeta_system \
    vendor

# Set error limit to BOARD_SUPER_PARTITON_SIZE - 500MB
#BOARD_SUPER_PARTITION_ERROR_LIMIT := 12360613888

# boot.img
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296

# metadata.img
BOARD_METADATAIMAGE_PARTITION_SIZE := 16777216
BOARD_USES_METADATA_PARTITION := true

# product.img
BOARD_USES_PRODUCTIMAGE := true
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_PRODUCT := product

# recovery.img
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100663296

# super.img
BOARD_BUILD_SUPER_IMAGE_BY_DEFAULT := true

# system_ext.img
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_SYSTEM_EXT := system_ext

# userdata.img
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10737418240
# Stock ships with F2FS but we force it to ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs

# odm.img
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_ODM := odm
