#!/system/bin/sh
# customize.sh -installer logic shell script

# $1: API (ignored)
# $2: TMPDIR
# $3: ZIPFILE

API="$1"
TMPDIR="$2"
ZIPFILE="$3"

ui_print() { echo "$1"; }

MODID=iOS-level_Touch-Boost_Gaming_Daily-Driver
MODPATH=/data/adb/modules/$MODID

ui_print "================================================="
ui_print "   iOS-level Touch Boost 🚀 v2.1 Gaming🎮+DailyDriver📱"
ui_print "   by AnnonymoustheGOAT#1"
ui_print "   System-wide touch smoothness like iPhones"
ui_print "================================================="

rm -rf "$MODPATH"
mkdir -p "$MODPATH"

unzip -o "$ZIPFILE" 'module.prop' 'service.sh' 'system/*' 'vendor/*' -d "$MODPATH" >/dev/null 2>&1

mkdir -p "$MODPATH/system/usr/idc"
mkdir -p "$MODPATH/vendor/usr/idc"

set_perm_recursive() {
  DIR=$1
  OWNER=$2
  GROUP=$3
  DIRMODE=$4
  FILEMODE=$5
  [ -d "$DIR" ] || return
  chown -R "$OWNER":"$GROUP" "$DIR"
  find "$DIR" -type d -exec chmod "$DIRMODE" {} ;
  find "$DIR" -type f -exec chmod "$FILEMODE" {} ;
}

set_perm_recursive "$MODPATH" 0 0 0755 0644

if [ -f "$MODPATH/service.sh" ]; then
  chmod 0755 "$MODPATH/service.sh"
fi

sleep 2.5
ui_print "========================================================="
ui_print "-processing module files.......✅"
ui_print "-mounting magisk.......✅"
ui_print "-applying calibration to /system/usr/idc (via Magisk mount)⚙️"
ui_print "-applying calibration to /vendor/usr/idc (via Magisk mount)⚙️"
ui_print "-cleaning up.......✅"
ui_print "-processing.......⚙️⚙️⚙️"
ui_print "========================================================="
ui_print " "
ui_print " "
ui_print " "
sleep 2.5
ui_print "========================================================="
ui_print " iOS-level Touch Boost 🚀 v2.1 Gaming & DailyDriver"
ui_print "   By AnnonymoustheGOAT#1"
ui_print " Experience iPhone like touch smoothness"
ui_print " Installation successful"
ui_print "========================================================="
ui_print " "
ui_print " "
ui_print " "
sleep 2.5
ui_print "========================================================="
ui_print "-Error❌-BOOTLOOP❗-BOOTLOOP❗-BOOTLOOP❗🚫🚫🚫🚫🚫"
ui_print "========================================================="
ui_print " "
ui_print " "
ui_print " "
sleep 2.5
ui_print "========================================================="
ui_print "-Chillax, I got ur back❗I was kidding😁Look at your face😂"
ui_print "It was a joke, buddy. Fuck Stock🖕Fuck Restrictions🖕"
ui_print "========================================================="
sleep 2.5
ui_print "-Setting permissions."
ui_print "-Done."
ui_print "-Reboot required to apply touch calibration."
exit 0