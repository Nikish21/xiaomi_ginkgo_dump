#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:3d2ea1ad69facb736c5cc0363a2fd80fe3d1ca82; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:b3e4eccfea3fb38456952b52d1b82bc67abbe036 EMMC:/dev/block/bootdevice/by-name/recovery 3d2ea1ad69facb736c5cc0363a2fd80fe3d1ca82 67108864 b3e4eccfea3fb38456952b52d1b82bc67abbe036:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
