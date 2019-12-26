#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:5d42f3748ed2db951ed5d379cf6580ed61257523; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:444d71bb86e9522bbc79af0855df0312437a53af EMMC:/dev/block/bootdevice/by-name/recovery 5d42f3748ed2db951ed5d379cf6580ed61257523 67108864 444d71bb86e9522bbc79af0855df0312437a53af:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
