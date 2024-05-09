##### Ke folder data ######
mount /cache
mount /data
mount /external_sd

logcat -d > /data/log.txt 
dmesg > /data/dmesg.txt
cp -r /tmp/recovery.log /data/

##### ke folder cache ####
logcat -d > /cache/log.txt 
dmesg > /cache/dmesg.txt
cp -r /tmp/recovery.log /cache


##### ke folder external ######

logcat -d > /external_sd/log.txt 
dmesg > /external_sd/dmesg.txt
cp -r /tmp/recovery.log /external_sd



cp -r /sys/fs/pstore /data
cp -r /proc/last_kmsg /data


cp -r /sys/fs/pstore /cache
cp -r /proc/last_kmsg /cache

cp -r /sys/fs/pstore /external_sd
cp -r /proc/last_kmsg /external_sd