#!/bin/bash

DIR=/home/linaro/ros_install

adb wait-for-device shell mkdir $DIR

adb push ./ros_install.sh $DIR

adb shell chmod +x $DIR/ros_install.sh

adb shell sync 

adb shell $DIR/ros_install.sh

adb shell sync 
