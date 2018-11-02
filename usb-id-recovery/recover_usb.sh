#!/bin/bash


USB_PATH=/usr/bin/usb

TOOLS_PATH=$USB_PATH/compositions

adb wait-for-device shell rm -rf $TOOLS_PATH

adb push ./compositions $TOOLS_PATH

adb shell chmod -R 777 $TOOLS_PATH

adb shell sed -r -i 's/\b2CC0(_?[A-z]*)*/9025/g' /usr/bin/setusbcomposition

HOME_USB_DIR=/home/linaro/usbsetup

adb shell mkdir $HOME_USB_DIR

adb push ./usb_boot_link.sh $HOME_USB_DIR

adb shell chmod +x $HOME_USB_DIR/usb_boot_link.sh

adb shell $HOME_USB_DIR/usb_boot_link.sh

adb shell sed -i 's/exit 0/\/home\/linaro\/usbsetup\/usb_boot_link.sh/g' /etc/rc.local

adb shell 'echo "exit 0" >> /etc/rc.local'

adb shell sync 

echo "Success recovery."
