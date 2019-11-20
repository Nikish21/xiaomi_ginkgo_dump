#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:21c581e04a98dee418115ed83b09514ea9b94ec2; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:2db15c1fb7403e78e93fcf03472d65057979ca47 EMMC:/dev/block/bootdevice/by-name/recovery 21c581e04a98dee418115ed83b09514ea9b94ec2 67108864 2db15c1fb7403e78e93fcf03472d65057979ca47:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
