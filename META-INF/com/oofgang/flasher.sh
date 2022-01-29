#!/sbin/sh
mount -o ro -t auto /dev/block/mapper/system_a /system_root
blockdev --setrw /dev/block/mapper/system_a
mount -o rw,remount -t auto /system_root
mount -o ro -t auto /dev/block/mapper/product_a /product
blockdev --setrw /dev/block/mapper/product_a
mount -o rw,remount -t auto /product
mount -o ro -t auto /dev/block/mapper/vendor_a /vendor
blockdev --setrw /dev/block/mapper/vendor_a
mount -o rw,remount -t auto /vendor
mount -o ro -t auto /dev/block/mapper/system_ext_a /system_ext
blockdev --setrw /dev/block/mapper/system_ext_a
mount -o rw,remount -t auto /system_ext
mount -o ro -t auto /dev/block/mapper/odm_a /odm
blockdev --setrw /dev/block/mapper/odm_a
mount -o rw,remount -t auto /odm
umount /system_root
umount /system_ext
umount /odm
umount /product
umount /vendor
pigz -d -c /data/super.img.gz > /dev/block/by-name/super
