#!/bin/bash
adb wait-for-device push ./iw /bin/
adb shell chmod +x /bin/iw
adb push ./turn_off_power_save.sh /
adb shell chmod +x /turn_off_power_save.sh
adb shell /turn_off_power_save.sh
