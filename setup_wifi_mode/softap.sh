#!/bin/bash
adb wait-for-device shell /usr/local/qr-linux/wificonfig.sh -s softap
adb shell /usr/local/qr-linux/wificonfig.sh -g
adb shell sync
