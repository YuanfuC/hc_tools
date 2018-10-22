#/bin/bash
#!/bin/bash
IP=192.168.1.1
sudo adb kill-server
sudo adb connect $IP
sleep 0.5
sudo adb shell
