#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:cb089393e70d44ce4f564fdd9111d38fd168087f; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:110c1c47688ddba7f4d2a176dfb64ee120e6e6a0 EMMC:/dev/block/bootdevice/by-name/recovery cb089393e70d44ce4f564fdd9111d38fd168087f 67108864 110c1c47688ddba7f4d2a176dfb64ee120e6e6a0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
