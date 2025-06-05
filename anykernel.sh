# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=AkameKernel for Android 12-14 ( ginkgo )
do.devicecheck=1
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=1
device.name1=ginkgo
device.name2=ginkgoin
device.name3=willow
supported.versions=12-14
supported.patchlevels=
'; } # end properties

# Initialize block for non-dynamic partitions
block=/dev/block/bootdevice/by-name/boot;

# AOSP configuration for Android 12-14 non-dynamic
is_slot_device=0;
ramdisk_compression=auto;
no_block_display=true;

. tools/ak3-core.sh;

ui_print " » Target: AOSP Android 12-14 Non-Dynamic ";
ui_print " » Installing AkameKernel for ginkgo...";

dump_boot;
write_boot;

ui_print " » Kernel installation completed successfully! ";
ui_print " » Compatible: AOSP Android 12-14 ";
