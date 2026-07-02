# OnePlus 15 (infiniti) per-device camera config.
#
# Device-only camera knobs belong here after the SoC-common camera surface is
# inherited from vendor/oneplus/camera-sm8850-common. The variant-specific
# properties below keep the graph in the vendor camera tier.

$(call inherit-product, vendor/oneplus/camera-sm8850-common/camera-sm8850-common.mk)

# Stock OOS OTA version used by AI-Unit cloud attestation.
PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.version.ota=CPH2745_11.A.42_0420_202606022356

# infiniti device-only camera props. ro.hardware.camera selects the family-A odm
# oemlayer HAL; disableHeicUltraHDR uses the infiniti vendor-partition '=true' form.
PRODUCT_VENDOR_PROPERTIES += \
    ro.camera.disableHeicUltraHDR=true \
    ro.hardware.camera=oemlayer.v2
