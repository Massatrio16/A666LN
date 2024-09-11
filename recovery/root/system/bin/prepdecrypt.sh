#!/sbin/sh
# We are in android 13
  setprop crypto.ready 1
cp -r /tmp/recovery.log /cache
cp -r /tmp/recovery.log /data
logcat -d > /data/logcat_tw.txt
logcat -d > /cache/logcat_tw.txt


