#
# Copyright (C) 2023 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# For building with minimal manifest
export ALLOW_MISSING_DEPENDENCIES=true

FDEVICE="s5e8835"

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
	if [ -n "$chkdev" ]; then
		FOX_BUILD_DEVICE="$FDEVICE"
	else
		chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
		[ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
	fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
	fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
export TARGET_ARCH=arm64
export OF_USE_MAGISKBOOT=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
export OF_FLASHLIGHT_ENABLE=0
export OF_USE_GREEN_LED=0
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export OF_DONT_PATCH_ON_FRESH_INSTALLATION=1
export OF_NO_RELOAD_AFTER_DECRYPTION=1
export FOX_DISABLE_APP_MANAGER=1
export OF_MAINTAINER="SavedByLight"
export FOX_BUILD_TYPE="Beta"
export FOX_VARIANT=AOSP
export OF_SCREEN_H=2400
export OF_STATUS_H=122
export OF_STATUS_INDENT_LEFT=80
export OF_STATUS_INDENT_RIGHT=80
export LC_ALL="C"
export OF_HIDE_NOTCH=1
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CHECK_OVERWRITE_ATTEMPTS=1
export OF_FBE_METADATA_MOUNT_IGNORE=1
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
export OF_OTA_BACKUP_STOCK_BOOT_IMAGE=1
export OF_RUN_POST_FORMAT_PROCESS=1
export OF_ADVANCED_SECURITY=1
export FOX_NO_SAMSUNG_SPECIAL=1
export FOX_ENABLE_APP_MANAGER=1
export FOX_INSTALLER_DEBUG_MODE=1
export OF_FLASHLIGHT_ENABLE=0
export OF_USE_GREEN_LED=0
export FOX_DELETE_AROMAFM=0
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
export OF_QUICK_BACKUP_LIST="/boot;/dtbo;"
export OF_FORCE_PREBUILT_KERNEL=1
export FOX_REPLACE_BUSYBOX_PS=0
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_SED_BINARY=1
export OF_ENABLE_LPTOOLS=1
export OF_KEEP_DM_VERITY_FORCED_ENCRYPTION=1
export OF_SKIP_DECRYPTED_ADOPTED_STORAGE=1
export OF_FIX_DECRYPTION_ON_DATA_MEDIA=1
export OF_UNBIND_SDCARD_F2FS=1
export FOX_RECOVERY_INSTALL_PARTITION=/dev/block/by-name/recovery
export FOX_RECOVERY_SYSTEM_PARTITION=/dev/block/mapper/system
export FOX_RECOVERY_VENDOR_PARTITION=/dev/block/mapper/vendor
export FOX_TARGET_DEVICES="a35x"

	# Let's see which are our build vars
    if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
        export | grep "FOX" >> $FOX_BUILD_LOG_FILE
        export | grep "OF_" >> $FOX_BUILD_LOG_FILE
        export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
        export | grep "TW_" >> $FOX_BUILD_LOG_FILE
    fi
fi