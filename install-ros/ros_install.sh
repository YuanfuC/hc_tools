#!/bin/bash
echo "start install ros:"

apt-get install -f

sudo update-locale LANG=C LANGUAGE=C LC_ALL=C LC_MESSAGES=POSIX

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get update

sudo apt-get install -y ros-indigo-ros-base

sudo apt-get -f -o Dpkg::Options::="--force-overwrite" install

apt-get update --fix-missing

apt-get install -y ros-indigo-ros-base

apt-get install -y ros-indigo-tf2-ros

apt-get install -y ros-indigo-tf2-geometry-msgs

apt-get install -y ros-indigo-opencv3

apt-get install -y libyaml-cpp-dev

apt-get install -y ros-indigo-mavlink

dpkg -r libhwloc-plugins

dpkg -r ocl-icd-libopencl1:armhf

echo "export ROS_IP=192.168.1.1" >> /home/linaro/.bashrc

echo "source /opt/ros/indigo/setup.bash" >> /home/linaro/.bashrc

echo "source /home/linaro/.bashrc" >> ~/.bashrc

echo "Install success"

