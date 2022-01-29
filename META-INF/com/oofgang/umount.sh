#!/sbin/sh
umount /system_root
umount /system_ext
umount /odm
umount /product
umount /vendor
rm -rf /data/super.img.gz
rm -rf /data/oofgang