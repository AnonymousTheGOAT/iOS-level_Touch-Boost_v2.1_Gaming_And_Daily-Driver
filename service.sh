#!/system/bin/sh
# service.sh - runs in late_start service mode

MODDIR=${0%/*}

for path in /system/usr/idc /vendor/usr/idc; do
  if [ -d "$path" ]; then
    f="$path/NVTCapacitiveTouchScreen.idc"
    if [ -f "$f" ]; then
      chown 0:0 "$f"
      chmod 0644 "$f"
    fi
  fi
done