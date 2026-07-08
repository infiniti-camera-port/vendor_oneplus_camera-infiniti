#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from os import path

from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)
from extract_utils.tools import android_root

module = ExtractUtilsModule(
    'camera-infiniti',
    'oneplus',
    device_rel_path='vendor/oneplus/camera-infiniti',
)
module.vendor_rel_path = path.join('proprietary', 'vendor', 'oneplus', 'camera-infiniti')
module.vendor_path = path.join(android_root, module.vendor_rel_path)
module.vendor_rro_path = path.join(module.vendor_path, 'rro_overlays')

if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()
