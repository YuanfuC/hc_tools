#!/bin/bash
USB_PATH=/usr/bin/usb
TOOLS_PATH=$USB_PATH/compositions

rm $USB_PATH/boot_hsusb_composition
ln -fs $TOOLS_PATH/9025 $USB_PATH/boot_hsusb_composition
ln -fs $TOOLS_PATH/empty $USB_PATH/boot_hsic_composition
