#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:b06e5edb12b663658dfc392de472ec1b923a1361; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:05e5f6b29913eb0fb6eb10e24c33f6b65026c150 EMMC:/dev/block/bootdevice/by-name/recovery b06e5edb12b663658dfc392de472ec1b923a1361 67108864 05e5f6b29913eb0fb6eb10e24c33f6b65026c150:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
