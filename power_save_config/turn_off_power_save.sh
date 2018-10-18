#!/bin/bash
/bin/iw dev wlan0 get power_save
/bin/iw dev wlan0 set power_save off
/bin/iw dev wlan0 get power_save
