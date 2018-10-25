# hc_tools

### adb_connect 

USB 连接飞机

```
./adb_via_usb.sh
```

Wi-Fi 连接

```
# 默认 IP 192.168.1.1
./adb_via_default_wifi.sh 

# 手动输入 IP
./adb_via_wifi.sh 
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
### mini-dm
使用 mini-dm 查看 DSP console 信息, mini-dm 工具附带在 hexagon_sdk 中，先执行 findMini-dm.sh 将 mini-dm 复制到当前目录，再启动 mini-dm

```
# findMini-dm.sh 执行成功后，该目录下会出先 mind-dm 工具
./findMini-dm.sh 

sudo ./mini-dm
```

### quick-start 

在飞机中添加快速启动脚本

```
./enableQuickStart.sh
```
