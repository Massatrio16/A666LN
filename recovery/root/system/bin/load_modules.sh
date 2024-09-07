#!/sbin/sh

# Team Hovatek Touch Fix
load_panel()
{
	insmod /lib/modules/gslX680.ko
	insmod /lib/modules/adaptive-ts.ko
	insmod /lib/modules/gpio.ko
	insmod /lib/modules/gpio-sprd.ko
	insmod /lib/modules/focaltech_ft8756_spi_ts.ko
	insmod /lib/modules/nvt_nt36xxx_spi_ts.ko
	insmod /lib/modules/fortsense_fp.ko
	insmod /lib/modules/sc27xx_tsensor_thermal.ko
	insmod /lib/modules/tran_gesture.ko
	insmod /lib/chipone_icnl99xx.ko
	insmod /lib/extcon-usb-gpio.ko
	insmod /lib/gpio-eic-sprd.ko
	insmod /lib/gpio-pmic-eic-sprd.ko
	
}


load_panel
wait 1
mount /data
mount -o remount, rw /data
cp -r /tmp/recovery.log /data/
cp -r /tmp/recovery.log /cache
logcat -d > /data/log_reco.txt
logcat -d > /cache/log_reco.txt
setprop modules.loaded 1
exit 0
