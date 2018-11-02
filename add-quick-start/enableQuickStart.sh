#!/bin/bash
adb wait-for-device push ./start-px4 /start-px4
adb shell chmod +x /start-px4/runpx4.sh
adb shell chmod +x /start-px4/runoptflow.sh
adb shell sync

