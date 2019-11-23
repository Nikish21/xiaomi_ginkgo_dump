#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:b70c5d91e96e167166343433ff42a284e13e4697; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:12871cec4a3412b3a0b412fa4444c892fd60be12 EMMC:/dev/block/bootdevice/by-name/recovery b70c5d91e96e167166343433ff42a284e13e4697 67108864 12871cec4a3412b3a0b412fa4444c892fd60be12:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
