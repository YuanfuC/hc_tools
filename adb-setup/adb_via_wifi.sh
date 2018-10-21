#/bin/bash
#!/bin/bash
read -p "Device ip: " IP
sudo adb kill-server
sudo adb connect $IP
sudo adb shell
