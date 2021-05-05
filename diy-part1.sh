#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# KoolProxyR去广告插件
git clone https://github.com/jefferymvp/luci-app-koolproxyR package/luci-app-koolproxyR
# 微信推送插件
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
# 京东签到插件
#pushd package/lean
#rm -rf luci-app-jd-dailybonus
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/luci-app-jd-dailybonus
#popd
# adguardhome插件
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
# Clash插件
git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash
#PassWall插件
git clone https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
# SmartDNS插件
git clone https://github.com/pymumu/openwrt-smartdns package/openwrt-smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
#强制关机插件
git clone https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
#自动关机插件
git clone https://github.com/sirpdboy/luci-app-autopoweroff package/luci-app-autopoweroff
# luci-app-godproxy
git clone https://github.com/godros/luci-app-godproxy.git package/luci-app-godproxy
#luci-app-bypass
git clone https://github.com/garypang13/luci-app-bypass.git package/luci-app-bypass
svn checkout https://github.com/garypang13/openwrt-packages/trunk/lua-maxminddb  package/luci-app-bypass/lua-maxminddb
git clone https://github.com/garypang13/smartdns-le package/luci-app-bypass/smartdns-le
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}
# luci-app-aliddns
git clone https://github.com/honwen/luci-app-aliddns.git package/luci-app-aliddns
# luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git lede/package/lean/
git clone https://github.com/jerrykuku/luci-app-vssr.git lede/package/lean/luci-app-vssr







# argon主题 
pushd package/lean
rm -rf luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon luci-theme-argon
popd
# Edge主题
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge package/luci-theme-edge
