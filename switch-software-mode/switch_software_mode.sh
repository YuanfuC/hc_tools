#!/bin/bash

if [ -z $1 ]; then

	echo "Usage: px4 / hover"
        echo " "
	echo "px4: switch to px4 software"
        echo " "
	echo "hover: switch to HoverCamera default software"
        echo " "
	exit 0
fi

RCPATH=/etc/rc.local

if [ $1 = "px4" ]; then
	echo "Switch to px4 software environment."
        cp -a ./temp.file rc.local
        echo "exit 0" >> rc.local
        echo "wait for connect..."
        adb wait-for-device push ./rc.local $RCPATH
        adb shell chmod 775 $RCPATH
	adb shell sync
        rm ./rc.local
        echo "Please reboot hover camera to affect."
        
fi


if [ $1 = "hover" ]; then
	echo "Switch to px4 software environment."
	cp -a ./temp.file rc.local
	echo "/home/linaro/manage/boot" >> rc.local
        echo " " >> rc.local
	echo "exit 0" >> rc.local
	echo "wait for connect..."
	adb wait-for-device push ./rc.local $RCPATH
        adb shell chmod 775 $RCPATH
	adb shell sync
	rm ./rc.local
	echo "Please reboot hover camera to affect."
fi
