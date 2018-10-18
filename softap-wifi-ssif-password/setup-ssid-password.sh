#!/bin/bash
echo "HoverCamera wifi config: "
adb wait-for-device shell cat /etc/hostapd.conf | grep ssid
adb shell cat /etc/hostapd.conf | grep wpa_passphrase
echo ""

echo "HoverCamera wi-fi only affect at softap mode."
read -p "ssid: " SSID
read -p "password: " PASS

cp -a ./hostapd.temp ./hostapd.conf

sed -i 's/SSIDTEMP/'$SSID'/g' hostapd.conf
sed -i 's/PASSTEMP/'$PASS'/g' hostapd.conf

adb push ./hostapd.conf /etc/hostapd.conf

echo ""
echo "HoverCamera wifi change to: "
adb wait-for-device shell cat /etc/hostapd.conf | grep ssid
adb shell cat /etc/hostapd.conf | grep wpa_passphrase

rm ./hostapd.conf

adb shell reboot 

