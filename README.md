# device/generic/sdm845 (AOSP device config for SDM845 devices)

This device repo aims to support booting AOSP on SDM845 devices supported by the mainline Linux kernel.

For more information, please check out the [wiki](https://github.com/aospm/android_device_generic_sdm845/wiki).

## FP4

Tested on:
* AOSP tag android-12.0.0_r27 / android-12.0.0_r32
* external/mesa3d tag mesa-22.1.2 (from https://gitlab.freedesktop.org/mesa/mesa) plus ./external_mesa3d.patch
* external/libdrm with aosp/upstream-main merged in
* external/drm_hwcomposer commit 5070d51aa0b52566cb9c224a931f10274d9be16a (from https://gitlab.freedesktop.org/drm-hwcomposer/drm-hwcomposer)
