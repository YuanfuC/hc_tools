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
### usb-id-recovery
将 USB 配置成高通的平台，才可以使用 mini-dm

```bash
cd hc_tools/usb-id-recovery/

./recover_usb.sh

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

### switch-software-mode
切换飞机使用模式，切换为 HoverCamera 线上软件版本:

```bash
./switch_software_mode.sh hover

#重启后生效
```

切换飞机使用模式，切换为 PX4 软件版本:

```bash
./switch_software_mode.sh px4

#重启后生效
```

### install-ros

安装 ros 环境

```bash 
cd ./install-ros

./start_install_ros.sh
```

### 新飞机配置步骤推荐
* 烧最新的镜像
* `burn.py` 安装 HoverCamera  程序
* `usb-id-recovery` 修改 ID 为高通 USB-ID
* `switch-software-mode` 切换到 PX4 或者是 Hover 模式
* `install-ros` 安装 ros 环境

**注意** 检查 `/usr/bin/usb` 目录下,  `ls -l boot_hsusb_composition` 是否为 `boot_hsusb_composition -> /usr/bin/usb/compositions/9025`, 如果不是手动执行 `/home/linaro/usbsetup/usb_boot_link.sh`。否则再次上电重启将无法 adb 进入飞机。






