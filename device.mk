PRODUCT_PROPERTY_OVERRIDES += \        ro.twrp.vendor_boot=true

PRODUCT_PACKAGES += \        fastbootd

# Init recovery props (optional)
PRODUCT_COPY_FILES += \        $(LOCAL_PATH)/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab
