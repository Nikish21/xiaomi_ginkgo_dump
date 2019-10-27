#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:ab119e9752ba3c5904e6964666faebbec2158021; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:c3d1ed98f2b74195952bc2dbc2b4638dff44bfda EMMC:/dev/block/bootdevice/by-name/recovery ab119e9752ba3c5904e6964666faebbec2158021 67108864 c3d1ed98f2b74195952bc2dbc2b4638dff44bfda:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
