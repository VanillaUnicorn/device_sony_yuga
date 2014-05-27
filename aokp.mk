# Inherit common product files.
$(call inherit-product, vendor/vanilla/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/vanilla/configs/gsm.mk)

# Inherit AOSP device configuration for yuga
$(call inherit-product-if-exists, device/sony/yuga/full_yuga.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6603_1270-4975 BUILD_FINGERPRINT=Sony/C6603_1270-4975/C6603:4.1.2/10.1.A.1.434/Tfp_rw:user/release-keys PRIVATE_BUILD_DESC="C6603-user 4.1.2 10.1.A.1.434 Tfp_rw test-keys"

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

