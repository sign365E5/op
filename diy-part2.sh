#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/Coco-Router/g' package/base-files/files/bin/config_generate

#修改默认密码
sed -i 's/root::0:0:99999:7:::/root:$1$3ZL2YxPA$NmwUNvXNWmpdhlQV8xQcp1:19872:0:99999:7:::/g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/root::0:0:99999:7:::/root:$1$3ZL2YxPA$NmwUNvXNWmpdhlQV8xQcp1:19872:0:99999:7:::/g' package/base-files/files/etc/shadow
