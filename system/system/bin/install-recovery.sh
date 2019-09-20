#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:843d9181dfd0b58c4bdc4932e53da83330842957; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:448dfbe4399b4d7ccf8fce02735b2ab1e1772406 EMMC:/dev/block/bootdevice/by-name/recovery 843d9181dfd0b58c4bdc4932e53da83330842957 67108864 448dfbe4399b4d7ccf8fce02735b2ab1e1772406:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
