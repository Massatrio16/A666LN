##### Ke folder data ######

mount /data
mount /cache

logcat -d > /data/log.txt 
dmesg > /data/dmesg.txt
cp -r /tmp/recovery.log /data

##### ke folder cache ####
logcat -d > /cache/log.txt 
dmesg > /cache/dmesg.txt
cp -r /tmp/recovery.log /cache


 cp /sys/fs/pstore /data
 cp /proc/last_kmsg  /data
 
 cp /sys/fs/pstore /cache
 cp /proc/last_kmsg /cache
