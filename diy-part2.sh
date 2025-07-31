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

# ---------------------------------------------------------------------------------
#  Rust 编译if-unchanged
# ---------------------------------------------------------------------------------
echo "==> Applying patch for Rust build issue..."
RUST_MAKEFILE=$(find feeds/packages/lang/rust -type f -name "Makefile")
if [ -f "$RUST_MAKEFILE" ]; then
    # 查找包含 'download-ci-llvm' 的行，并将其值从 true 替换为 if-unchanged
    sed -i 's/download-ci-llvm\s*:=\s*true/download-ci-llvm := if-unchanged/g' "$RUST_MAKEFILE"
    echo "Rust Makefile patched successfully at: $RUST_MAKEFILE"
else
    echo "Warning: Rust Makefile not found, skipping patch."
fi

# 自定义默认网关，后方的192.168.30.1即是可自定义的部分
sed -i 's/192.168.6.1/192.168.30.1/g' package/base-files/files/bin/config_generate

#sed -i "s/hostname='ImmortalWrt'/hostname='360T7'/g" package/base-files/files/bin/config_generate

# 固件版本名称自定义
#sed -i "s/DISTRIB_DESCRIPTION=.*/DISTRIB_DESCRIPTION='OpenWrt By gino $(date +"%Y%m%d")'/g" package/base-files/files/etc/openwrt_release

# 取消原主题luci-theme-bootstrap 为默认主题
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# 修改 argon 为默认主题
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 删除原默认主题
#rm -rf package/lean/luci-theme-bootstrap
