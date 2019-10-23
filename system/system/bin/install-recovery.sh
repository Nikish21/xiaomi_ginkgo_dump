#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:961029757f59cfcef3fd8024b78f14ae420d1aca; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:512f5ed97719e7b73c6f1c80c6490072411af366 EMMC:/dev/block/bootdevice/by-name/recovery 961029757f59cfcef3fd8024b78f14ae420d1aca 67108864 512f5ed97719e7b73c6f1c80c6490072411af366:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
