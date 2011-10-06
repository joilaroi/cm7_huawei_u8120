# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

#$(call inherit-product-if-exists, vendor/huawei/u8120/u8120-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8120/overlay

PRODUCT_PACKAGES += \
    libRS \
    hwprops \
    Gallery \
    lights.msm7k \
    copybit.u8120 \
    gps.u8120

# TSCAlibration	
PRODUCT_PACKAGES += \
    TSCalibration

# Live Wallpapers
PRODUCT_PACKAGES += \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers

# Live Wallpapers support
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# vold
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Board-specific init
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/initlogo.rle:root/initlogo.rle

PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/ueventd.u8120.rc:root/ueventd.u8120.rc \
    device/huawei/u8120/prebuilt/init.u8120.rc:root/init.u8120.rc

# Media configuration xml file
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# Keychars & Keylayouts
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/huawei/u8120/prebuilt/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/huawei/u8120/prebuilt/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/huawei/u8120/prebuilt/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/u8120/prebuilt/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/huawei/u8120/prebuilt/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml


# Sound and OMX
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8120/prebuilt/etc/AudioFilterU8120.csv:system/etc/AudioFilterU8120.csv \
    device/huawei/u8120/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/u8120/prebuilt/etc/01_qc.cfg:system/etc/01_qc.cfg \
    vendor/huawei/u8120/proprietary/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/huawei/u8120/proprietary/libOmxCore.so:system/lib/libOmxCore.so \
    vendor/huawei/u8120/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/huawei/u8120/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/huawei/u8120/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/huawei/u8120/proprietary/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    vendor/huawei/u8120/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/huawei/u8120/proprietary/libmm-omxcore.so:system/lib/libmm-omxcore.so \
    vendor/huawei/u8120/proprietary/libsnd.so:system/lib/libsnd.so

# TScalibration files
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/init.d/11pointercal:system/etc/init.d/11pointercal

# HW
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    device/huawei/u8120/prebuilt/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so

# Sensors
PRODUCT_COPY_FILES += \
    vendor/huawei/u8120/proprietary/akmd2:system/bin/akmd2


# Proprietary RIL related and Bluetooth
PRODUCT_COPY_FILES += \
    vendor/huawei/u8120/proprietary/qmuxd:system/bin/qmuxd \
    vendor/huawei/u8120/proprietary/rild:system/bin/rild \
    vendor/huawei/u8120/proprietary/libcm.so:system/lib/libcm.so \
    vendor/huawei/u8120/proprietary/libdiag.so:system/lib/libdiag.so \
    vendor/huawei/u8120/proprietary/libdll.so:system/lib/libdll.so \
    vendor/huawei/u8120/proprietary/libdsm.so:system/lib/libdsm.so \
    vendor/huawei/u8120/proprietary/libdss.so:system/lib/libdss.so \
    vendor/huawei/u8120/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/huawei/u8120/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/huawei/u8120/proprietary/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/huawei/u8120/proprietary/libnv.so:system/lib/libnv.so \
    vendor/huawei/u8120/proprietary/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/huawei/u8120/proprietary/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/huawei/u8120/proprietary/libqmi.so:system/lib/libqmi.so \
    vendor/huawei/u8120/proprietary/libqueue.so:system/lib/libqueue.so \
    vendor/huawei/u8120/proprietary/libril.so:system/lib/libril.so \
    vendor/huawei/u8120/proprietary/libril.so:obj/lib/libril.so \
    vendor/huawei/u8120/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/huawei/u8120/proprietary/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/huawei/u8120/proprietary/libwms.so:system/lib/libwms.so \
    vendor/huawei/u8120/proprietary/libwmsts.so:system/lib/libwmsts.so \
    vendor/huawei/u8120/proprietary/hci_qcomm_init:system/bin/hci_qcomm_init \
    vendor/huawei/u8120/proprietary/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

# OEM RPC
PRODUCT_COPY_FILES += \
    vendor/huawei/u8120/proprietary/modempre:system/bin/modempre \
    vendor/huawei/u8120/proprietary/oem_rpc_svc:system/bin/oem_rpc_svc \
    vendor/huawei/u8120/proprietary/libhwrpc.so:system/lib/libhwrpc.so \
    vendor/huawei/u8120/proprietary/liboem_rapi.so:system/lib/liboem_rapi.so

# Camera
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/lib/libcamera.so:obj/lib/libcamera.so \
    device/huawei/u8120/prebuilt/lib/libcamera.so:system/lib/libcamera.so \
    device/huawei/u8120/prebuilt/lib/libqcamera.so:system/lib/libqcamera.so \
    device/huawei/u8120/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/huawei/u8120/prebuilt/lib/libmmipl.so:system/lib/libmmipl.so \
    device/huawei/u8120/prebuilt/lib/libmmprocess.so:system/lib/libmmprocess.so

## Wifi related
PRODUCT_COPY_FILES += \
    device/huawei/u8120/firmware/ar6000.ko:system/wifi/ar6000.ko \
    device/huawei/u8120/firmware/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \
    device/huawei/u8120/firmware/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
    device/huawei/u8120/firmware/caldata.bin.ar6002:system/wifi/caldata.bin.ar6002 \
    device/huawei/u8120/firmware/caldata.bin.ar6102:system/wifi/caldata.bin.ar6102 \
    device/huawei/u8120/firmware/data.patch.hw2_0.bin.ar6002:system/wifi/data.patch.hw2_0.bin.ar6002 \
    device/huawei/u8120/firmware/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \
    device/huawei/u8120/firmware/device.bin:system/wifi/device.bin

# DHCP config for wifi
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

# wpa_supplicant configuration file
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf


#add autorun.iso to stop kernel complain about it..
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/autorun.iso:system/cdrom/autorun.iso \

# Other
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/huawei/u8120/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    device/huawei/u8120/prebuilt/etc/init.d/12cm:system/etc/init.d/12cm

PRODUCT_COPY_FILES += device/huawei/u8120/prebuilt/kernel:kernel

# Additions to build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dataroaming=false \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=24m \
    persist.sys.use_dithering=0 \
    persist.sys.purgeable_assets=1 \
    ring.delay=0 \
    ro.telephony.call_ring.delay=0 \
    ro.telephony.call_ring.multiple=false


## (2) Also get non-open-source aspects if available
$(call inherit-product-if-exists, vendor/huawei/u8120/u8120-vendor.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := cyanogen_u8120
PRODUCT_DEVICE := u8120
PRODUCT_MODEL := Huawei U8120
