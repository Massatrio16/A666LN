mount /extetnal_sd
mount /data

logcat -d > /data/logcat.txt
dmesg > /data/dmesg.txt
cp -r /tmp/recovery.log /data
logcat -d > /external_sd/logcat.txt
dmesg > /external_sd/dmesg.txt
