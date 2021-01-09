PRODUCT_COPY_FILES += device/nvidia/jetson-nano/files/dummy_kernel:kernel

BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs

# This ensures the needed build tools are available.
# TODO: make non-linux builds happy with external/f2fs-tool; system/extras/f2fs_utils
ifeq ($(HOST_OS),linux)
TARGET_USERIMAGES_USE_F2FS := true
endif

# LOCAL_FSTAB := $(LOCAL_PATH)/files/fstab.tegra
# TARGET_RECOVERY_FSTAB = $(LOCAL_FSTAB)

# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/files/init.tegra.rc:root/init.tegra.rc \
#     $(LOCAL_PATH)/files/init.tegra.usb.rc:root/init.tegra.usb.rc \
#     $(LOCAL_PATH)/files/init.recovery.tegra.rc:root/init.recovery.tegra.rc \
#     $(LOCAL_FSTAB):root/fstab.tegra \
#     $(LOCAL_PATH)/files/ueventd.tegra.rc:root/ueventd.tegra.rc

# TODO: touch idc files

# PRODUCT_PACKAGES += \
#     libwpa_client \
#     hostapd \
#     wpa_supplicant \
#     wpa_supplicant.conf

# PRODUCT_AAPT_CONFIG := normal large xlarge
# PRODUCT_AAPT_PREF_CONFIG := xhdpi

# PRODUCT_CHARACTERISTICS := tablet,nosdcard

# # Wifi-Only overlays.
# DEVICE_PACKAGE_OVERLAYS := \
#     $(LOCAL_PATH)/overlay

# PRODUCT_PACKAGES += \
#     librs_jni \
#     com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    fsck.f2fs mkfs.f2fs

TEGRA_TOP:=vendor/nvidia/tegra
NV_SKIP_KERNEL_BUILD:=1

$(call inherit-product-if-exists, vendor/nvidia/tegra/core/android/t210/full.mk)
$(call inherit-product-if-exists, vendor/nvidia/tegra/core/nvidia-tegra-vendor.mk)
