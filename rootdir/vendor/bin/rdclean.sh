#!/system/bin/sh

dev=/dev/block/bootdevice/by-name/rdimage

[ "`dd if=$dev bs=1 count=8 2>/dev/null`" = "ANDROID!" ] && {
	log -p w -t rdclean clearing ramdump partition
	cat /dev/zero > $dev
}
