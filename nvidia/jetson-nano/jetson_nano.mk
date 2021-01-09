# Inherit from those products. Most specific first.
$(call inherit-product, device/nvidia/jetson-nano/device.mk)
# TODO: check this file
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_NAME := jetson_nano
PRODUCT_DEVICE := jetson_nano
PRODUCT_BRAND := AOSP
PRODUCT_MODEL := Jetson Nano
PRODUCT_MANUFACTURER := Nvidia

HAVE_NVIDIA_PROP_SRC := true
