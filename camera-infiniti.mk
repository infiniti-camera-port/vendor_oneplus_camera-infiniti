# OnePlus 15 (infiniti) per-device camera config.
#
# Device-only camera knobs belong here; the SoC-common camera surface is inherited from
# vendor/oneplus/camera-sm8850-common. This generation carries no infiniti-only .mk knob
# beyond the inherit (device camera props/tuning live in device/oneplus/infiniti and the
# regenerated payload); unification is a single manifest pin flip with zero .mk edits.

$(call inherit-product, vendor/oneplus/camera-sm8850-common/camera-sm8850-common.mk)

# infiniti device-only camera props (absorbed from the task-8
# device/oneplus/infiniti-camera scaffold). ro.hardware.camera selects the family-A
# odm oemlayer HAL; disableHeicUltraHDR uses the infiniti vendor-partition '=true' form.
PRODUCT_VENDOR_PROPERTIES += \
    ro.camera.disableHeicUltraHDR=true \
    ro.hardware.camera=oemlayer.v2
