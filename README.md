# hc_tools

### power_save_config
关闭 Wi-Fi 省电逻辑，提高速度
```
./upload-turn-off.sh
```

### wifi-mode 
切换 Wi-Fi 模式
```
# 设置为 AP 模式， ip：192.168.1.1
./softap.sh

# 设置为 station 模式，输入所要连接的 Wi-Fi SSID/password
./station.sh
```

### softap-wifi-ssid-password
在AP模式下，设置 Wi-Fi 的 ssid 和 password
```
./setup-ssid-password.sh
```
