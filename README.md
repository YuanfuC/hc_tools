# hc_tools

### adb_connect

usb 连接

```bash

cd hc_tools/adb_connect

./adb_via_usb.sh

```

Wi-Fi 连接，默认 192.168.1.1

```bash
cd hc_tools/adb_connect

./adb_via_default_wifi.sh
```

Wi-Fi 指定 IP 连接

```bash
cd hc_tools/adb_connect

./adb_via_wifi.sh
```

### setup_wifi_mode
切换 Wi-Fi 模式

```bash
cd hc_tools/wifi-mode

# 设置为 AP 模式， ip：192.168.1.1
./softap.sh

# 设置为 station 模式，输入所要连接的 Wi-Fi SSID/password
./station.sh
```

### setup_wifi_ssid_password
在AP模式下，设置 Wi-Fi 的 ssid 和 password

```bash

cd hc_tools/softap-wifi-ssid-password

./setup-ssid-password.sh
```

### add-quick-start
添加 PX4 和 optflow 快速启动脚本

```bash
cd hc_tools/quick-start

./enableQuickStart.sh
```

### find-mini-dm
搜索 mini-dm 工具

```bash
cd hc_tools/mini-dm

./findMini-dm.sh

ls
```

如果寻找到 mini-dm 会复制到当前目录，会在目录中看到这个工具。

mini-dm [功能介绍](https://www.yuque.com/zeorzeroopen/xhqmaf/gp6b8c)

```
sudo ./mini-dm
```



