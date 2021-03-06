# Inherit omni-specific board config
include device/htc/flounder/BoardConfigOmni.mk

# Exclude Live Wallpapers
TARGET_EXCLUDE_LIVEWALLPAPERS := true

# Inherit base AOSP device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 1080x720

# SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Override product naming for Omni
PRODUCT_NAME := omni_flounder
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="google/volantis/flounder:7.0/NRD91D/3234828:user/release-keys" \
    PRIVATE_BUILD_DESC="volantis-user 7.0 NRD91D 3234828 release-keys"

# Audio effects
PRODUCT_COPY_FILES += \
    device/htc/flounder/audio_effects.conf:system/etc/audio_effects.conf
