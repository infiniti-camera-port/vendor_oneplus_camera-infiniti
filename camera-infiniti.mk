# OnePlus 15 (infiniti) per-device camera config.
#
# Variant-specific camera properties belong in this camera tier, while this
# scaffold inherits the SM8850 common camera surface.

$(call inherit-product, vendor/oneplus/camera-sm8850-common/camera-sm8850-common.mk)

$(call inherit-product, proprietary/vendor/oneplus/camera-infiniti/camera-infiniti-vendor.mk)

PRODUCT_COPY_FILES += \
    vendor/oneplus/camera-infiniti/configs/init/init.camera_process.rc:$(TARGET_COPY_OUT_ODM)/etc/init/init.camera_process.rc

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.version.ota=CPH2745_11.A.01_001_202606291912 \
    ro.oplus.pipeline.region=IN \
    ro.oplus.product.series=flagship_series
