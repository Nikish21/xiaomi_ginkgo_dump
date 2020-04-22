#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:db0062b9dc6248b83a97fd36e99b2ef029d11e52; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:80ec789660914f56c5272168e52f1a3ad854a2ca EMMC:/dev/block/bootdevice/by-name/recovery db0062b9dc6248b83a97fd36e99b2ef029d11e52 67108864 80ec789660914f56c5272168e52f1a3ad854a2ca:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
