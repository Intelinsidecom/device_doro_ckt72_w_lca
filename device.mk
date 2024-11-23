#
# Copyright 2013 The Android Open-Source Project
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

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/Doro/ckt72_w_lca-kernel/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel

$(call inherit-product-if-exists, vendor/Doro/ckt72_w_lca/device-vendor.mk)

TARGET_PROVIDES_INIT_RC := true

#also Just in case, remove them if they cause problems or shit :)
PRODUCT_COPY_FILES += \
    device/doro/ckt72_w_lca/configs/throttle.sh:system/etc/throttle.sh
    device/doro/ckt72_w_lca/configs/ht120.mtc:system/etc/.tp/.ht120.mtc
    device/doro/ckt72_w_lca/configs/thermal.conf:system/etc/.tp/thermal.conf
    device/doro/ckt72_w_lca/configs/thermal.off.conf:system/etc/.tp/thermal.off.conf
    device/doro/ckt72_w_lca/configs/notimeout.sh:system/etc/notimeout.sh

#Just in case :)
PRODUCT_COPY_FILES += \
    device/doro/ckt72_w_lca/init.charging.rc:root/init.charging.rc \
    device/doro/ckt72_w_lca/ueventd.rc:root/ueventd.rc

# Input device files for hammerhead (i don't know do i need those at all)
   -------PRODUCT_COPY_FILES += \
    device/lge/hammerhead/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/lge/hammerhead/gpio-keys.kcm:system/usr/keychars/gpio-keys.kcm \
    device/lge/hammerhead/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl \
    device/lge/hammerhead/qpnp_pon.kcm:system/usr/keychars/qpnp_pon.kcm \
    device/lge/hammerhead/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
    device/lge/hammerhead/hs_detect.kcm:system/usr/keychars/hs_detect.kcm

#Yeah its long, don't you think? Gonnna make it shorter soon by checking what is used and whats not.
PRODUCT_COPY_FILES += 
    device/doro/ckt72_w_lca/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
    device/doro/ckt72_w_lca/init.rc:root/init.rc \
    device/doro/ckt72_w_lca/srs_processing.cfg:system/data/srs_processing.cfg
    device/doro/ckt72_w_lca/init.rc:root/init.charging.rc \
    device/doro/ckt72_w_lca/init.ssd_nomuser.rc:root/init.ssd_nomuser.rc \
    device/doro/ckt72_w_lca/init.no_ssd.rc:root/init.no_ssd.rc \
    device/doro/ckt72_w_lca/init.ssd.rc:root/init.ssd.rc \
    device/doro/ckt72_w_lca/init.project.rc:root/init.project.rc \
    device/doro/ckt72_w_lca/meta_init.project.rc:root/meta_init.project.rc \
    device/doro/ckt72_w_lca/factory_init.project.rc:root/factory_init.project.rc \
    device/doro/ckt72_w_lca/init.fon.rc:root/init.fon.rc \
    device/doro/ckt72_w_lca/init.modem.rc:root/init.modem.rc \
    device/doro/ckt72_w_lca/init.usb.rc:root/init.usb.rc \
    device/doro/ckt72_w_lca/init.xlog.rc:root/init.xlog.rc \
    device/doro/ckt72_w_lca/player.cfg:system/etc/player.cfg \
    device/doro/ckt72_w_lca/media_codecs.xml:system/etc/media_codecs.xml \
    device/doro/ckt72_w_lca/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg \
    device/doro/ckt72_w_lca/meta_init.rc:root/meta_init.rc \
    device/doro/ckt72_w_lca/meta_init.modem.rc:root/meta_init.modem.rc \
    device/doro/ckt72_w_lca/factory_init.rc:root/factory_init.rc \
    device/doro/ckt72_w_lca/audio_policy.conf:system/etc/audio_policy.conf \
    device/doro/ckt72_w_lca/init.protect.rc:root/init.protect.rc \
    device/doro/ckt72_w_lca/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
    device/doro/ckt72_w_lca/partition_permission.sh:system/etc/partition_permission.sh \
    device/doro/ckt72_w_lca/fstab:root/fstab \
    device/doro/ckt72_w_lca/fstab.nand:root/fstab.nand \
    device/doro/ckt72_w_lca/fstab.fat.nand:root/fstab.fat.nand \
    device/doro/ckt72_w_lca/enableswap.sh:root/enableswap.sh

PRODUCT_COPY_FILES += \
    device/doro/ckt72_w_lca/audio_policy.conf:system/etc/audio_policy.conf \
    device/doro/ckt72_w_lca/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_COPY_FILES += \
    device/doro/ckt72_w_lca/media_codecs.xml:system/etc/media_codecs.xml \
    device/doro/ckt72_w_lca/media_profiles.xml:system/etc/media_profiles.xml

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    device/doro/ckt72_w_kk/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    device/doro/ckt72_w_kk/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    device/doro/ckt72_w_kk/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    device/doro/ckt72_w_kk/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    device/doro/ckt72_w_kk/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    device/doro/ckt72_w_kk/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    device/doro/ckt72_w_kk/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    device/doro/ckt72_w_kk/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml
    device/doro/ckt72_w_kk/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml
    device/doro/ckt72_w_kk/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_CHARACTERISTICS := sdcard

DEVICE_PACKAGE_OVERLAYS := \
    device/doro/ckt72_w_lca/overlay

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.tethering.interface=ap0

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
ro.camera.sound.forced=0
ro.audio.silent=0

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/mtk-ril.so
    rild.libargs=-d /dev/ttyC0

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/phone-hdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4339/device-bcm.mk)

