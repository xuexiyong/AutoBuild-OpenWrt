#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.7.1/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/root::0:0:99999:7:::/root::0:0:99999:7:::/g' /etc/shadow
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/rosywrt/luci-theme-rosy.git package/luci-theme-rosy