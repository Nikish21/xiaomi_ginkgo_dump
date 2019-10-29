#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:228780041a68172c6b1623f14b9121999eb46293; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:e9262cfa978fdc526551e4bf998e7b5a36a564e8 EMMC:/dev/block/bootdevice/by-name/recovery 228780041a68172c6b1623f14b9121999eb46293 67108864 e9262cfa978fdc526551e4bf998e7b5a36a564e8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
