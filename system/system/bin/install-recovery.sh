#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:e86e94d3c766cce6ac6e835ee8a73d0be38fbbf4; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:66477f436fa4046a54ed8a653d1c8052b195890e EMMC:/dev/block/bootdevice/by-name/recovery e86e94d3c766cce6ac6e835ee8a73d0be38fbbf4 67108864 66477f436fa4046a54ed8a653d1c8052b195890e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
