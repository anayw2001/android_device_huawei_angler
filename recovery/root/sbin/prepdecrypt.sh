#!/sbin/sh

relink()
{
	fname=$(basename "$1")
	target="/sbin/$fname"
	sed 's|/system/bin/linker64|///////sbin/linker64|' "$1" > "$target"
	chmod 755 $target
}

finish()
{
	#umount /v
	#umount /s
	#rmdir /v
	#rmdir /s
	setprop crypto.ready 1
	exit 0
}

relink /sbin/android.hardware.gatekeeper@3.0-service
relink /sbin/android.hardware.keymaster@1.0-service
finish

