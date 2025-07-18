#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld.git' >> feeds.conf.default
#echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >>feeds.conf.default
#echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' >>feeds.conf.default
#echo 'src-git openclash https://github.com/vernesong/OpenClash.git;dev' >> feeds.conf.default
#echo 'src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' >> feeds.conf.default
#echo 'src-git luci-app-smartdns https://github.com/pymumu/luci-app-smartdns.git;master' >>feeds.conf.default
#echo 'src-git openwrt-smartdns https://github.com/pymumu/openwrt-smartdns.git;master' >>feeds.conf.default

# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
sed -i '1i src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' feeds.conf.default
sed -i '2i src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default
sed -i '3i src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main' feeds.conf.default
sed -i '4i src-git openclash https://github.com/vernesong/OpenClash.git;dev' feeds.conf.default
sed -i '5i src-git passwall https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' feeds.conf.default
#sed -i '6i src-git luci-app-smartdns https://github.com/pymumu/luci-app-smartdns.git;master' feeds.conf.default
#sed -i '7i src-git openwrt-smartdns https://github.com/pymumu/openwrt-smartdns.git;master' feeds.conf.default
