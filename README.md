# Android device tree for samsung SM-A356E (a35x)

# How to build
## Sync twrp-12.1
    repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1; repo sync
## Clone Galaxy A35 Tree
    git clone https://github.com/teamwin/android_device_samsung_a35x.git -b android-12.1 device/samsung/a35x
## Build
    export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_a35x-eng; mka recoveryimage

# Contributors
 - [111hav0c](https://github.com/111hav0c) - Tester
 - [drnightshadow](https://github.com/drnightshadow) - Tester
 - [Physwizz](https://github.com/physwizz) - Thanks to Physwizz for the Enforcing Kernel
 - [Ravindu644](https://github.com/ravindu644) - Thanks for the Permissive Kernel

# Known Bugs
 - /Data wont mount (known samsung issue)
# Checks
Blocking checks
- [x] Correct screen/recovery size - Tested by 111hav0c
- [x] Working Touch, screen - Tested by 111hav0c
- [x] Backup to internal/microSD - Tested by drnightshadow
- [x] Restore from internal/microSD - Tested by drnightshadow
- [x] reboot to system - Tested by 111hav0c
- [x] ADB - Tested by 111hav0c

Medium checks
- [ ] update.zip sideload (Untested)
- [x] Screen goes off and on - Tested by 111hav0c
- [x] F2FS/EXT4 Support, exFAT/NTFS where supported
- [x] all important partitions listed in mount/backup lists - Tested by 111hav0c
- [x] backup/restore to/from external (USB-OTG) storage (not supported by the device) - Tested by drnightshadow

Minor checks
- [x] MTP export - Tested by drnightshadow
- [x] reboot to bootloader (No Bootloader) - in this case i will tick the box if download mode is working - Tested by 111hav0c
- [x] reboot to recovery - Tested by 111hav0c
- [x] poweroff - Tested by 111hav0c
- [x] battery level - Tested by drnightshadow
- [x] temperature - Tested by drnightshadow
- [ ] encrypted backups (Untested)
- [x] input devices via USB (USB-OTG) - keyboard, mouse and disks (not supported by the device) - Tested by drnightshadow
- [x] USB mass storage export - Tested by drnightshadow
- [x] set brightness - Tested by drnightshadow
- [x] vibrate - Tested by 111hav0c
- [x] screenshot - Tested by 111hav0c
- [ ] partition SD card (Untested)

```
#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
```
