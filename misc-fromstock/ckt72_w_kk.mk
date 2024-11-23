#[pengfei.zhong-FEATURE-140]Porting from Doro 810 for newtork lock
#add atcid,atci_service,nvram_backup_binder,EngineerMode
PRODUCT_PACKAGES := \
	atcid \
	atci_service \
	nvram_backup_binder \
	EngineerMode    \
	doro_preinstall \
	rb_ua \
#    FMRadio
#    MyTube \
#    VideoPlayer

# add for include GMS
$(call inherit-product, vendor/google/products/gms.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
#pengfei.zhong-HOPE-23,porting DOro820-testBuildFingerprint
# Overrides
PRODUCT_BRAND  := Doro
PRODUCT_NAME   := $(TARGET_PRODUCT)
PRODUCT_DEVICE := $(TARGET_PRODUCT)

ifeq ($(strip $(MTK_LCA_ROM_OPTIMIZE)),yes)
PRODUCT_RUNTIMES := runtime_libdvm_default
endif

