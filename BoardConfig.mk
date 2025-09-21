# Ulefone Armor 28 Ultra — TWRP device tree 
# Auto-generated starter based on image analysis.
#
# Header versions & packaging
BOARD_BOOTIMG_HEADER_VERSION := 4
BOARD_VENDOR_BOOTIMG_HEADER_VERSION := 4
BOARD_INCLUDE_RECOVERY_RAMDISK := true
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
BOARD_RAMDISK_COMPRESSION := lz4
TARGET_NO_KERNEL := true
BOARD_EXCLUDE_KERNEL_FROM_RECOVERY_IMAGE := true

# Partitions & dynamic super
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_USES_METADATA_PARTITION := true
BOARD_SUPER_PARTITION_SIZE := 9663676416                     # 0x240000000 = 9.0 GiB
BOARD_SUPER_PARTITION_GROUPS := armor28ultra_dynamic_partitions
BOARD_ARMOR28ULTRA_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product odm_dlkm vendor_dlkm system_dlkm
BOARD_ARMOR28ULTRA_DYNAMIC_PARTITIONS_SIZE := 9663676416                     # 0x240000000 = 9.0 GiB
BOARD_METADATAIMAGE_PARTITION_SIZE := 77561856               # 0x49f8000 ≈ 74 MB

# A/B
AB_OTA_UPDATER := true

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
# If testing with disabled verification, you'll 'fastboot --disable-verity --disable-verification flash vbmeta ...'

# File systems
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TW_THEME := portrait_hdpi
TW_INCLUDE_FASTBOOTD := true
TW_USE_NEW_MINADBD := true
TW_HAS_MTP := true
TW_INCLUDE_REPACKTOOLS := true
TW_EXCLUDE_APEX := false
TW_DEVICE_VERSION := Armor28Ultra-auto

# Mediatek specifics (adjust as needed)
TARGET_BOARD_PLATFORM := MT6989

# Decrittazione /data (FBE, Android 12/13+)
TW_INCLUDE_CRYPTO := true
TW_USE_FSCRYPT_POLICY := 1
TW_INCLUDE_FBE_METADATA_DECRYPT := true

# Facoltativo/retro-compat:
TW_INCLUDE_CRYPTO_FBE := true
