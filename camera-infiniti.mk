# OnePlus 15 (infiniti) per-device camera config.
#
# Device-only camera knobs belong here; the SoC-common camera surface is inherited from
# vendor/oneplus/camera-sm8850-common. This generation carries no infiniti-only .mk knob
# beyond the inherit (device camera props/tuning live in device/oneplus/infiniti and the
# regenerated payload); unification is a single manifest pin flip with zero .mk edits.

$(call inherit-product, vendor/oneplus/camera-sm8850-common/camera-sm8850-common.mk)
