# Android device tree for samsung SM-A356E (a35x)

# DISCLAIMER
This branch uses an experimental twrp-14.1 manifest, there is no guarentees this will work yet, for a stable branch use android-12.1 with the twrp-12.1 manifest

# Testers
 - [111hav0c](https://github.com/111hav0c)
 - [drnightshadow](https://github.com/drnightshadow)

# How to Build
## Initialise repo
    repo init -u https://github.com/SavedByLight/platform_manifest_twrp_aosp.git -b twrp-14.1
## Repo Sync
    repo sync
## Clone A35 Tree
    git clone https://github.com/SavedByLight/android_device_samsung_a35x -b staging-14.1 device/samsung/a35x
## Configure the A35x
    export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_a35x-ap2a-eng;
## Repopick (my twrp-14 manifest only)
    repopick 7922
## Make Recovery Image
    mka recoveryimage

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
- [x] input devices via USB (USB-OTG) - keyboard, mouse and disks (not supported by the device) (input devices working, storage devices broken) - Tested by drnightshadow
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
