#!/bin/bash
read -p "ssid: " SSID
read -p "password: " PASS

cp -a wpa_supplicant_template ./wpa_supplicant.conf
sed -i 's/the-ssid/'$SSID'/g' wpa_supplicant.conf
sed -i 's/the-pass/'$PASS'/g' wpa_supplicant.conf

adb push  ./wpa_supplicant.conf /etc/wpa_supplicant/

rm  ./wpa_supplicant.conf

adb shell /usr/local/qr-linux/wificonfig.sh -s station
adb shell /usr/local/qr-linux/wificonfig.sh -g

adb shell sync

